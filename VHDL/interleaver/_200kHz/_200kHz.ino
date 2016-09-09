// A sketch that creates an 8 MHz, 50% duty cycle PWM and a 250 kHz,
// 6-bit resolution PWM with varying duty cycle (changes every 5 µs
// or about every period.

#include <avr/io.h>
#include <util/delay.h>

int main(void)
{
  pinMode(3, OUTPUT); // Output pin for OCR2B
  pinMode(5, OUTPUT); // Output pin for OCR0B

  // Set up the 250 kHz output
  TCCR2A = bit(COM2A1) | bit(COM2B1) | bit(WGM21) | bit(WGM20);
  TCCR2B = bit(WGM22) | bit(CS20);
  OCR2A = 79;
  OCR2B = 31;

  // Set up the 8 MHz output
  TCCR0A = bit(COM0A1) | bit(COM0B1) | bit(WGM01) | bit(WGM00);
  TCCR0B = bit(WGM02) | bit(CS00);
  OCR0A = 1;
  OCR0B = 0;
}
