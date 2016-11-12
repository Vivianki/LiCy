// A sketch that creates an 250 kHz,
// 6-bit resolution PWM with varying duty cycle (changes every 5 µs
// or about every period.

#include <avr/io.h>
#include <util/delay.h>
int measure, lastMeasure;
void setup()
{
  Serial.begin(9600);
  pinMode(3, OUTPUT); // Output pin for OCR2B
  // Set up the 250 kHz output
  TCCR2A = bit(COM2A1) | bit(COM2B1) | bit(WGM21) | bit(WGM20);
  TCCR2B = bit(WGM22) | bit(CS20);
  OCR2A = 79;
  OCR2B = 31;
  measure = lastMeasure = analogRead(A0);
}

void loop() {
   measure = analogRead(A0);
   Serial.println(measure);
   if (lastMeasure > measure + 5 || lastMeasure < measure - 5) {
    OCR2A = measure / 4;
    OCR2B = OCR2A / 2;
    lastMeasure = measure;
    Serial.println("triggered");
   }
   
}
