/*Temp Sensing Fan Module
 * Team 8
 * Fan turns on slightly above room temp
 * and ramps up to max speed as temp increases
 */

//temp sensor pin
int tempPin = 2;
//motor pin
int motorPin = 0;

void setup() {
//output motor pin 0
pinMode(motorPin, OUTPUT);
//input temp pin 2
pinMode(tempPin,INPUT);
}
// the loop routine runs over and over again forever:
void loop() {
//read in voltage from sensor
int reading = analogRead(tempPin);
//convert voltage to temperature
float voltage = reading * 5.0;
voltage /= 1024.0; 
float temperatureC = (voltage - 0.5) * 100 ;

//ramp up motor speed based on temperature
if((temperatureC > 25) && (temperatureC < 30))
{
  analogWrite(motorPin,50);
}
else if((temperatureC > 30) && (temperatureC < 35))
{
  analogWrite(motorPin,100);
}
else if((temperatureC > 35) && (temperatureC < 40))
{
  analogWrite(motorPin,150);
}
else if((temperatureC > 40) && (temperatureC < 100))
{
  analogWrite(motorPin,250);
}
else
{
  analogWrite(motorPin,0);
}
delay(100);
}

