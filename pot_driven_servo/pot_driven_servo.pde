#include <Servo.h>

int potPin = 0;
int servoPin = 11;

int potReading;
int servoPos;

Servo servo;

void setup() {
  servo.attach(servoPin);
}

void loop() {
  potReading = analogRead(potPin);
  servoPos = map(potReading, 0, 1024, 0, 179);
  
  servo.write(servoPos);
  delay(15);
}
