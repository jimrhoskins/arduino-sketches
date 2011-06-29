const int buttonPin = 2;
const int ledPin = 13;

// Durations of dots, dashes, signal spaces, and letter spaces, and word spaces
const int dotLength = 150;
const int dashLength = 400;
const int signalDelay = 150;
const int letterDelay = 300;
const int spaceDelay = 600;


void setup() {
  pinMode(ledPin, OUTPUT);
  pinMode(buttonPin, INPUT); 
}

void loop() {
  if(digitalRead(buttonPin) == HIGH) {
    blinkMessage();
  }
  delay(10);
}

// Blink a dot
void dot(){
  digitalWrite(ledPin, HIGH);
  delay(dotLength);
  digitalWrite(ledPin, LOW);
  delay(signalDelay);
}

// Blink a dash
void dash(){
  digitalWrite(ledPin, HIGH);
  delay(dashLength);
  digitalWrite(ledPin, LOW);
  delay(signalDelay);
}

// Pasuse for a letter break;
void letter(){
  delay(letterDelay);
}

void space() {
  delay(spaceDelay);
}

void blinkMessage() {
  /*
  // SOS ... --- ...
  dot(); dot(); dot(); letter();
  dash(); dash(); dash(); letter();
  dot(); dot(); dot(); letter();
  */
  
  // HELLO JIM .... . .-.. .-.. ---    .--- .. --
  dot(); dot(); dot(); dot(); letter();
  dot(); letter();
  dot(); dash(); dot(); dot(); letter();
  dot(); dash(); dot(); dot(); letter();
  dash(); dash(); dash(); letter();
  
  space();
  
  dot(); dash(); dash(); dash(); letter();
  dot(); dot(); letter();
  dash(); dash(); letter();
}
