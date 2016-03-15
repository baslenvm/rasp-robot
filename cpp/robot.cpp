#include <fcntl.h> //Used for UART
#include <linux/i2c-dev.h>
#include <math.h>
#include <pthread.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/ioctl.h>
#include <sys/stat.h>
#include <sys/types.h>
#include <termios.h> //Used for UART
#include <unistd.h>  //Used for UART
using namespace std;

// Data
float compass_d;

// Uart
#define MAX_PAYLOAD_LEN 66
char *uart_p = (char *)"/dev/ttyAMA0";
int uart0_filestream = -1;
char buff_rx[MAX_PAYLOAD_LEN], buff_tx[MAX_PAYLOAD_LEN];
bool uart_r = true;
// Compass
char *compass_p = (char *)"/dev/i2c-0";
const int HMC5883L_I2C_ADDR = 0x1E;
/*----------------------------------------------------------------------------*/
void selectI2C(int fd, int addr, char *name) {
  if (ioctl(fd, I2C_SLAVE, addr) < 0) {
    fprintf(stderr, "%s not present\n", name);
    // exit(1);
  }
}

void writeToI2C(int fd, int reg, int val) {
  char buf[2];
  buf[0] = reg;
  buf[1] = val;

  if (write(fd, buf, 2) != 2) {
    fprintf(stderr, "Can't write to ADXL345\n");
    // exit(1);
  }
}
void *compass(void *t) {
  int fd;
  unsigned char buf[16];

  if ((fd = open(compass_p, O_RDWR)) < 0) {
    // Open port for reading and writing
    fprintf(stderr, "Failed to open i2c bus\n");
    pthread_exit(NULL);
  }

  /* initialise ADXL345 */

  selectI2C(fd, HMC5883L_I2C_ADDR, (char *)"HMC5883L");

  // writeToDevice(fd, 0x01, 0);
  writeToI2C(fd, 0x01, 32);
  writeToI2C(fd, 0x02, 0);

  while (true) {
    buf[0] = 0x03;

    if ((write(fd, buf, 1)) != 1) {
      // Send the register to read from
      fprintf(stderr, "Error writing to i2c slave\n");
    }

    if (read(fd, buf, 6) != 6) {
      fprintf(stderr, "Unable to read from HMC5883L\n");
    } else {
      short x = (buf[0] << 8) | buf[1];
      short y = (buf[4] << 8) | buf[5];
      short z = (buf[2] << 8) | buf[3];

      float angle = atan2(y, x) * 180 / M_PI;
      printf("x=%d, y=%d, z=%d\n", x, y, z);
      printf("angle = %0.1f\n\n", angle);
      compass_d = angle;
    }
    usleep(600 * 1000);
  }
  pthread_exit(NULL);
}
/*----------------------------------------------------------------------------*/
int openUart() {
  //-------------------------
  //----- SETUP USART 0 -----
  //-------------------------
  // At bootup, pins 8 and 10 are already set to UART0_TXD, UART0_RXD (ie the
  // alt0 function) respectively
  uart0_filestream = -1;

  // OPEN THE UART
  // The flags (defined in fcntl.h):
  //	Access modes (use 1 of these):
  //		O_RDONLY - Open for reading only.
  //		O_RDWR - Open for reading and writing.
  //		O_WRONLY - Open for writing only.
  //
  //	O_NDELAY / O_NONBLOCK (same function) - Enables nonblocking mode. When
  // set read requests on the file can return immediately with a failure status
  //											if
  // there
  // is
  // no
  // input
  // immediately
  // available (instead of blocking). Likewise, write requests can also return
  //											immediately
  // with
  // a
  // failure
  // status if the output can't be written immediately.
  //
  //	O_NOCTTY - When set and path identifies a terminal device, open() shall
  // not cause the terminal device to become the controlling terminal for the
  // process.
  uart0_filestream =
      open(uart_p, O_RDWR | O_NOCTTY |
                       O_NDELAY); // Open in non blocking read/write mode
  if (uart0_filestream == -1) {
    // ERROR - CAN'T OPEN SERIAL PORT
    printf("Error - Unable to open UART.  Ensure it is not in use by another "
           "application\n");
    return 0;
  }
  // CONFIGURE THE UART
  // The flags (defined in /usr/include/termios.h - see
  // http://pubs.opengroup.org/onlinepubs/007908799/xsh/termios.h.html):
  //	Baud rate:- B1200, B2400, B4800, B9600, B19200, B38400, B57600, B115200,
  // B230400, B460800, B500000, B576000, B921600, B1000000, B1152000, B1500000,
  // B2000000, B2500000, B3000000, B3500000, B4000000
  //	CSIZE:- CS5, CS6, CS7, CS8
  //	CLOCAL - Ignore modem status lines
  //	CREAD - Enable receiver
  //	IGNPAR = Ignore characters with parity errors
  //	ICRNL - Map CR to NL on input (Use for ASCII comms where you want to
  // auto correct end of line characters - don't use for bianry comms!)
  //	PARENB - Parity enable
  //	PARODD - Odd parity (else even)
  struct termios options;
  tcgetattr(uart0_filestream, &options);
  options.c_cflag = B115200 | CS8 | CLOCAL | CREAD; //<Set baud rate
  options.c_iflag = IGNPAR;
  options.c_oflag = 0;
  options.c_lflag = 0;
  tcflush(uart0_filestream, TCIFLUSH);
  tcsetattr(uart0_filestream, TCSANOW, &options);
  return 1;
}
int transUart() {
  while (true) {
    if (uart_r) {
      uart_r = false;
      if (uart0_filestream != -1) {
        int count = write(uart0_filestream, (void *)buff_tx,
                          MAX_PAYLOAD_LEN); // Filestream, bytes to write,
                                            // number of bytes to write
      }
      uart_r = true;
      break;
    }
  }
}
void *recUart(void *t) {
  while (true) {
    if (uart_r) {
      uart_r = false;
      // Because O_NDELAY has been used this will exit if there are no receive
      // bytes waiting (non blocking read), so if you want to hold waiting for
      // input simply put this in a while loop

      //----- CHECK FOR ANY RX BYTES -----
      int count = 0;
      unsigned char buff[2];
      bool end = false;
      buff[1] = '\0';
      memset(buff_rx, 0, MAX_PAYLOAD_LEN);
      do {
        if (count == MAX_PAYLOAD_LEN - 1 && buff[0] != '\r') {
          count = 0;
          memset(buff_rx, 0, MAX_PAYLOAD_LEN);
        }
        if (buff[0] == '\r') {
          end = true;
        }
        if (uart0_filestream != -1) {
          int rx_length = read(uart0_filestream, (void *)buff,
                               1); // Filestream, buffer to store in, number of
                                   // bytes to read (max)
          buff_rx[count] = buff[0];
        }
      } while (!end);
      uart_r = true;
      break;
    }
  }
}
int main() {
  pthread_t uart_rx_t, uart_tx_t, compass_t;
  pthread_create(&compass_t, NULL, compass, NULL);
  return 0;
}
