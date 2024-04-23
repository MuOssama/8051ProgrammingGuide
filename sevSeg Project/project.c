#include <8051.h>

#define byte unsigned char
#define bool unsigned char
#define true 1
#define false 0

const byte numbers[10] = {63, 6, 91, 79, 102, 109, 125, 7, 127, 111};


const int pinSegments[] = {0, 1, 2, 3, 4, 5, 6, 7};
const int pinDigit1 = 0;
const int pinDigit2 = 1;
const int pinButton = 2;
const int pinLED = 3;

int count = 0;
bool itr = 0;

void displayNumber(int num);
void showNumber(int num);
void delay(unsigned int ms);



void main() {
  while(1){
   itr=itr+1;
  while( (P1 & (1 << pinButton)) ){  
  displayNumber(count);
  }
  
   if(itr%2==0) {
       P1 |= (1 << pinLED);
   } 
   else {
       P1 &= ~(1 << pinLED);
   }
   count=count+1;
   delay(500);
    
    if (count == 100) {
      count = 0;
      }

  }
}
void displayNumber(int num) {
  int units,tens;
  tens =  (num / 10);
  units =  (num % 10);

  showNumber(tens);
  P1 &= ~(1 << pinDigit1);
  P1 |= (1 << pinDigit2);
  delay(50);
  showNumber(units);
  P1 |= (1 << pinDigit1);
  P1 &= ~(1 << pinDigit2);
  delay(100);
}

void showNumber(int num) {
   P2 = numbers[num];
 
}

void delay(unsigned int ms) {
  unsigned int i, j;
  for (i = 0; i < ms; i++) {
    for (j = 0; j < 250; j++) {
      // Delay loop
    }
  }
}
