#include <SPI.h>
#include "nRF24L01.h"
#include "RF24.h"
#include "printf.h"
#include <EEPROM.h>

class Engine {
  int Pwm, Dir1, Dir2;
  public:
  Engine(int pwm, int dir1, int dir2) {
    Pwm = pwm;
    Dir1=dir1;
    Dir2 = dir2;
    pinMode(Pwm, OUTPUT);
    pinMode(Dir1, OUTPUT);
    pinMode(Dir2, OUTPUT);
  }

  void Update(int speed, bool forward) {
    digitalWrite(Dir1, forward);
    digitalWrite(Dir2, !forward);
    analogWrite(Pwm, speed);
  }
};

//E2, IN4, IN3
Engine leftEngine(3, 4, 5);
int leftSpeed=200;
int rightSpeed=200;
//E1, IN1, IN2
Engine rightEngine(6, 7, 8);


// Hardware configuration: Set up nRF24L01 radio on SPI bus plus pins 7 & 8 
RF24 radio(9,10);

// Topology
const uint64_t pipes[2] = { 0xABCDABCD71LL, 0x544d52687CLL };              // Radio pipe addresses for the 2 nodes to communicate.

// A single byte to keep track of the data being sent back and forth
byte counter = 1;
byte data[32];
int leftZero;
int rightZero;
bool lamps;
bool horn;

#define LAMPS_PIN A0
#define HORN_PIN A1

void setup(){
  lamps = false;
  horn = false;
  pinMode(LAMPS_PIN, OUTPUT);
  pinMode(HORN_PIN, OUTPUT);
  digitalWrite(LAMPS_PIN, lamps);
  digitalWrite(HORN_PIN, horn);
  leftEngine.Update(0, 0);
  rightEngine.Update(0, 0);
  Serial.begin(115200);
  printf_begin();
  Serial.print(F("\n\rRF24/examples/pingpair_ack/\n\rROLE: "));
  leftZero = EEPROM.read(0);
  rightZero = EEPROM.read(1);
  radio.begin();
  radio.setAutoAck(1);                    // Ensure autoACK is enabled
  //radio.enableAckPayload();               // Allow optional ack payloads
  radio.setRetries(0,15);                 // Smallest time between retries, max no. of retries
  radio.setPayloadSize(32);                // Here we are sending 1-byte payloads to test the call-response speed
  radio.openWritingPipe(pipes[1]);        // Both radios listen on the same pipes by default, and switch when writing
  radio.openReadingPipe(1,pipes[0]);
  radio.startListening();                 // Start listening
  radio.printDetails();                   // Dump the configuration of the rf unit for debugging
  leftEngine.Update(0, 0);
  rightEngine.Update(0, 0);
}

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

void loop(void) {
    byte pipeNo;
    byte gotByte;                                       // Dump the payloads until we've gotten everything
    unsigned long time = millis();                          // Take the time, and send it.  This will block until complete   
    if (time - lastTime > 600) {
      leftEngine.Update(0, 0);
      rightEngine.Update(0, 0);
    }
    while( radio.available(&pipeNo)){
      radio.read( data, 32 );
      byte crc = crc8(&(data[1]), 31);
      if (crc!=data[0])
        continue;
      if (data[1] > 1) {
        // other target, we are 1 (main processor)
        // TODO: send to the other target
        continue;
      }

      lastTime = time;
      switch(data[2]) {
        case 0: //reset cmd
          EEPROM.update(0, data[3]); // zero for left stick
          EEPROM.update(1, data[4]); // zero for right stick
          leftZero = data[3];
          rightZero = data[4];
        break;
        case 1: //new data cmd
          int dx = (int)data[3] - leftZero;
          int dy = (int)data[4] - rightZero;
          leftEngine.Update(abs(dx), dx>0);
          rightEngine.Update(abs(dy), dy>0);
          if (data[5] & 0x01) {
            lamps = !lamps;
            digitalWrite(LAMPS_PIN, lamps);
          }
          if (data[5] & 0x02) {
            horn = !horn;
            digitalWrite(HORN_PIN, horn);
          }
        break;
      }
      //radio.writeAckPayload(pipeNo,&gotByte, 1 );    
   }
}
