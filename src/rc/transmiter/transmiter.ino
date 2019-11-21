#include <SPI.h>
#include "nRF24L01.h"
#include "RF24.h"
#include "printf.h"

// Hardware configuration: Set up nRF24L01 radio on SPI bus plus pins 7 & 8 
RF24 radio(9,10);

// Topology
const uint64_t pipes[2] = { 0xABCDABCD71LL, 0x544d52687CLL };              // Radio pipe addresses for the 2 nodes to communicate.

void setup(){
  Serial.begin(115200);
  printf_begin();
  Serial.print(F("\n\rRF24/examples/pingpair_ack/\n\rROLE: "));

  // Setup and configure rf radio

  radio.begin();
  radio.setAutoAck(1);                    // Ensure autoACK is enabled
  radio.enableAckPayload();               // Allow optional ack payloads
  radio.setRetries(0,15);                 // Smallest time between retries, max no. of retries
  radio.setPayloadSize(32);                // Here we are sending 1-byte payloads to test the call-response speed
  radio.openWritingPipe(pipes[0]);
  radio.openReadingPipe(1,pipes[1]);
  radio.stopListening();                                  // First, stop listening so we can talk.
  radio.printDetails();                   // Dump the configuration of the rf unit for debugging

  pinMode(2, INPUT_PULLUP);
  pinMode(3, INPUT_PULLUP);
  //pinMode(A0, INPUT);
  //pinMode(A1, INPUT);
}

byte data[32];

//
// Compute a Dallas Semiconductor 8 bit CRC directly.
// this is much slower, but much smaller, than the lookup table.
//
uint8_t crc8(const uint8_t *addr, uint8_t len) {
  uint8_t crc = 0;
  while (len--) {
    uint8_t inbyte = *addr++;
    for (uint8_t i = 8; i; i--) {
      uint8_t mix = (crc ^ inbyte) & 0x01;
      crc >>= 1;
      if (mix) crc ^= 0x8C;
      inbyte >>= 1;
    }
  }
  return crc;
}

unsigned long lastTime = 0;

bool oldLamps;
bool oldHorn;

void loop(void) {
    radio.stopListening();                                  // First, stop listening so we can talk.
    
    unsigned long time = micros();                          // Take the time, and send it.  This will block until complete   
                                                            //Called when STANDBY-I mode is engaged (User is finished sending)
    bool lamps = !digitalRead(2);
    bool horn = !digitalRead(3);
    byte leftStick = analogRead(A0)>>2;
    byte rightStick = analogRead(A1)>>2;

    if (((oldLamps!=lamps) || (oldHorn!=horn)) && (time-lastTime) > 500) {
      lastTime = time;
      oldLamps = lamps;
      oldHorn = horn;
    }
    if (oldLamps && oldHorn) {
      //reset cmd
      data[1] = 1;
      data[2] = 0;
      data[3] = leftStick;
      data[4] = rightStick;
    } else {
      data[1] = 1;
      data[2] = 1;
      data[3] = leftStick;
      data[4] = rightStick;
      data[5] = oldLamps | (oldHorn<<1);
    }

    data[0] = crc8(&(data[1]), 31);
    if (!radio.write( data, 32 )){
      Serial.println(F("failed."));      
    }else{

/*      if(!radio.available()){ 
        Serial.println(F("Blank Payload Received.")); 
      }else{
        while(radio.available() ){
          unsigned long tim = micros();
          radio.read( &gotByte, 1 );
          printf("Got response %d, round-trip delay: %lu microseconds\n\r",gotByte,tim-time);
          counter++;
        }
      }
*/
    }
    // Try again later
    //delay(1000);
}
