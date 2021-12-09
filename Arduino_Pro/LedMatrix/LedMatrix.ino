#include <LedControl.h>

LedControl lc=LedControl(12,11,10,1);

unsigned long delaytime=100;
void setup() {
  lc.shutdown(0,false); // Wake Up Matrix
  lc.setIntensity(0,1); // Brightnes
  lc.clearDisplay(0); // Clear Display
}

void writeArduinoOnMatrix() {
  /* here is the data for the characters */
  byte a[8]={
    B00000000,
    B00000000,
    B00000000,
    B00000000,
    B00000000,
    B00000000,
    B00000000,
    B00000000};
  byte b[8]={
    B10000001,
    B01000010,
    B00100100,
    B00011000,
    B00011000,
    B00100100,
    B01000010,
    B10000001};
  byte c[8]={
    B10000001,
    B01000010,
    B00100100,
    B00011000,
    B00011000,
    B00100100,
    B01000010,
    B10000001};
  byte d[8]={
    B00000000,
    B00000000,
    B00000000,
    B00000000,
    B00000000,
    B00000000,
    B00000000,
    B00000000};

  /* now display them one by one with a small delay */
  lc.setRow(0,0,a[0]);
  lc.setRow(0,1,a[1]);
  lc.setRow(0,2,a[2]);
  lc.setRow(0,3,a[3]);
  lc.setRow(0,4,a[4]);
  lc.setRow(0,5,a[5]);
  lc.setRow(0,6,a[6]);
  lc.setRow(0,7,a[7]);
  delay(delaytime);
  lc.setRow(0,0,b[0]);
  lc.setRow(0,1,b[1]);
  lc.setRow(0,2,b[2]);
  lc.setRow(0,3,b[3]);
  lc.setRow(0,4,b[4]);
  lc.setRow(0,5,b[5]);
  lc.setRow(0,6,b[6]);
  lc.setRow(0,7,b[7]);
  delay(delaytime);
  lc.setRow(0,0,c[0]);
  lc.setRow(0,1,c[1]);
  lc.setRow(0,2,c[2]);
  lc.setRow(0,3,c[3]);
  lc.setRow(0,4,c[4]);
  lc.setRow(0,5,c[5]);
  lc.setRow(0,6,c[6]);
  lc.setRow(0,7,c[7]);
  delay(delaytime);
  lc.setRow(0,0,d[0]);
  lc.setRow(0,1,d[1]);
  lc.setRow(0,2,d[2]);
  lc.setRow(0,3,d[3]);
  lc.setRow(0,4,d[4]);
  lc.setRow(0,5,d[5]);
  lc.setRow(0,6,d[6]);
  lc.setRow(0,7,d[7]);
  delay(delaytime);
}

void loop() { 
  writeArduinoOnMatrix();
}