int ledPin = 13;
int potPin = 0; //A0

int potVal = 0;
int delayLength = 1000;

void setup() {
  pinMode(ledPin, OUTPUT);
}

void loop() {
  potVal = analogRead(potPin);
  
  // Scale pot val to min/max strobe delay
  delayLength = map(potVal, 0, 1023, 20, 700);
  
  digitalWrite(ledPin, HIGH);
  delay(delayLength);
  digitalWrite(ledPin, LOW);
  delay(delayLength);
};
