#include <avr/io.h>
#include <util/delay.h>
#include <avr/pgmspace.h>

#define HIGH      1
#define LOW       0
#define INPUT     1
#define OUTPUT    0

#define LED PB0      // OC0A PWM output pin  (on t84=PB2, t85=PB0)
#define SWITCH PB4   // ptt switch

const uint8_t sine_wave_50[] PROGMEM= 
{
  133,145,158,168,179,189,196,204,209,214,
  217,219,219,219,217,212,207,199,191,184,
  176,166,156,143,133,122,112, 99, 89, 79,
   71, 64, 56, 48, 43, 38, 36, 36, 36, 38,
   41, 46, 51, 59, 66, 77, 87, 97,110,122,
};

void init_pwm()
{
   //Set PORTB1 pin as output
   DDRB=0xFF;
   // initial OCR1A value
   OCR0A=80;
   //Output compare OC1A 8 bit non inverted PWM
   TCCR0A=0x91;
   //start timer without prescaler
   TCCR0B=0x01;
   //enable output compare interrupt for OCR1A
   TIMSK=0x10;
}

int main()
{
   pinMode(SWITCH,OUTPUT);
   digitalWrite(SWITCH,LOW);
  
   init_pwm();
   uint8_t step=0;
   
   while(1)
   {
   
      digitalWrite(SWITCH,HIGH);
   
      // send a 1000Hz tone 
      for (step=0; step<50; step++)
      {
         OCR0A = pgm_read_byte(&sine_wave_50[step]);
         _delay_us(20); 
      }

   }
   
   return 0;
}
