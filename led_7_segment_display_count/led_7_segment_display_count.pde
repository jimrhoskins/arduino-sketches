// Lights a 7 segment LED display
// Segments ordered Clockwise from the top, with the last bit in the middle
int ledPins[] = {0, 1, 2, 3, 4, 5, 6};

// If using Serial (to debug for example()
// Don't use pins 0 & 1 (TX and RX)
//
// More reliable (doesn't utilize d0, d1) and easy to switch
// int ledPins[] = {7, 8, 2, 3, 4, 5, 6};

/*
Pin orientation
 BASE        BIT
  0           1
5   1      32    2
  6           64   
4   2      16    4
  3           8

*/

// Digit formations encoded into bitmasks
int digits[] = {
  63,   // 0
  6,    // 1
  91,   // 2
  79,   // 3
  102,  // 4
  109,  // 5
  125,  // 6
  7,    // 7
  127,  // 8
  111,  //9
};

int digit = 0;
  

void setup() {
  for(int i=0; i < 7; i++) {
    pinMode(ledPins[i], OUTPUT); 
  }
}

void loop() {
  // Write digit, increment, loop
  displayDigit(digit);
  digit++;
  delay(1000);
}


void displayDigit(int n){
  // Get the last digit
  n = n % 10;
  
  for(int power=0; power < 7; power++){
    int mask = ceil(pow(2, power));

    // If bit in pattern is 1, power the pin   
    if(mask & digits[n]) {
      digitalWrite(ledPins[power], HIGH);
    } else {
      digitalWrite(ledPins[power], LOW);
    }
  }
}
