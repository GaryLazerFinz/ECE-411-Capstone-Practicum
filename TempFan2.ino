// We need some integers 
int SensorPin = 2; // ADC Pin 2
int FanPin = 0; // PWM Pin 0
int Value = 0; // The temperature as seen by the MCU

// the setup routine runs once when you press reset:
void setup() {
// initialize the digital pin as an output.
pinMode(SensorPin, INPUT);
pinMode(FanPin, OUTPUT);
}

// the loop routine runs over and over again forever:
void loop() {
Value = analogRead(SensorPin); // The range could be from 0-1023
value = map(Value, 0, 1023, 0, 255); // maps one range of values to another
//value = map(Value, 500, 900, 0, 255);  We will probably need something like this 70 degrees to 100 degrees F just Guessing
analogWrite(FanPin, Value); // The range could be from 0-255
}
