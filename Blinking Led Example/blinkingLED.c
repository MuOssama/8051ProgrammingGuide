#include <8051.h>

void delay(unsigned int ms);
#define ledPin 0


void main() {
  //super loop 
  while(1){
    //LED On by setting led pin 
    P1 |= (1<<ledPin); 
    delay(50);
    //LED Off by clearing led pin
    P1 &= ~(1<<ledPin); 
    delay(50);
  }
}

void delay(unsigned int ms) {
  unsigned int i, j;
  for (i = 0; i < ms; i++) {
    for (j = 0; j < 1000; j++) {
      // Delay loop
    }
  }
}
