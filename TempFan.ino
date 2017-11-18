int led = 0; // blink 'digital' pin 1 - AKA the built in red LED
int sensor = 2; // temp sensor pin
int Value= 0; 

// the setup routine runs once when you press reset:
void setup() {
// initialize the digital pin as an output.
pinMode(led, OUTPUT);
pinMode(sensor,INPUT); 
}
// the loop routine runs over and over again forever:
void loop() {
Value = analogRead(sensor);// between 0 and 1023
Value = map(Value,0,480,0,3); 
switch (Value) {
    case 0:    // your hand is on the sensor
      analogWrite(led, 0); // between 0 and 255
      break;
    case 1:    // your hand is close to the sensor
      analogWrite(led, 50); // between 0 and 255
      break;
    case 2:    // your hand is a few inches from the sensor
      analogWrite(led, 200); // between 0 and 255
      break;
    case 3:    // your hand is nowhere near the sensor
      analogWrite(led, 255); // between 0 and 255
      break;
  }
  delay(1);        // delay in between reads for stability
}
