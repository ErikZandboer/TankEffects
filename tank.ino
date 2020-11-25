/*--------------------------------------------------------------------------------------------*/
/* Tank led & motor simulation.                                                               */
/*                                                                                            */
/* Controls two leds and a motor to simulate a model tank                                     */
/*                                                                                            */
/* Versioning:                                                                                */
/* 1.00            Creation. First go at timing the leds and motor.                           */
/* 1.01            Made sure the leds cannot get stuck to "on" and simplified timing defines  */
/*--------------------------------------------------------------------------------------------*/

// Includes
#include <Arduino.h>
#include <SoftwareSerial.h>
#include "RedMP3.h"

// Define the physical pinout
#define RATTLELED   13
#define RADARMOTOR  5
#define MP3_RX    8   //should connect to TX of the Serial MP3 Player module
#define MP3_TX    7   //connect to RX of the MP3 player module

// Setup serial comms to the MP3 hardware
MP3 mp3(MP3_RX, MP3_TX);

// Get some base counters in for the runtime in seconds.
unsigned int    TickCounter=0;

#define RUN_FREQ 100

// Timings and things to change
#define TIM_SAMPLESTART       500               // 5 seconds
#define TIM_SAMPLELENGTH      1000              // 10 seconds
#define TIM_BURST1            510               // 5 seconds plus a tiny bit
#define TIM_BURSTLEN1         26                // Length of burst1. Make this an EVEN number! (if this is 10 then there are 5 bursts)
#define TIM_BURST2            600    
#define TIM_BURSTLEN2         180               // Length of burst2. Make this an EVEN number! (if this is 10 then there are 5 bursts)
#define TIM_BURST3            870         
#define TIM_BURSTLEN3         320               // Length of burst3. Make this an EVEN number! (if this is 10 then there are 5 bursts)
#define TIM_REPEAT            6000              // Rewind at 60 seconds (max. value is 655535 = 327 seconds = a little over 5 minutes)

#define SPD_RADAR             25                // min=0, max=255. Find the value that works for your setup

// This runs only once when powering on
void setup()
{
        digitalWrite(RATTLELED, LOW);     // Blinking led group starts OFF
        digitalWrite(RADARMOTOR,LOW);     // Radar motor stopped.

        pinMode (RATTLELED,   OUTPUT);
        pinMode (RADARMOTOR,  OUTPUT);

        analogWrite (RADARMOTOR, SPD_RADAR);   // Run the motor at 50 to slow down the radar.
}

// This loops forever.
void loop()
{
        while ( (millis() % 10) != 0L ) //Just do nothing until millis()/5 has no remainder --> Run at 100Hz
        {
                asm("nop \n"); // Just do NOP to make sure the compiler doesn't optimize the while() away
        }

        // This code executes 200 times a second
        TickCounter++;
        if (TickCounter > TIM_REPEAT)       
        {
                TickCounter = 0;   // Counts up to a single second, then increase the RunTime
        }
        
        // Time the stuff!
        if (TickCounter == TIM_SAMPLESTART)  mp3.playWithVolume(1,26);  // Play the first mp3 on the card at volume 26 (max is 30)
        if (TickCounter == TIM_SAMPLESTART+TIM_SAMPLELENGTH) mp3.stopPlay(); // Stop playing after the show is over

        if (TickCounter >= TIM_BURST1 && TickCounter <= TIM_BURST1 + TIM_BURSTLEN1)
        {
                if (TickCounter & 0x0004) digitalWrite(RATTLELED, HIGH);
                else digitalWrite(RATTLELED, LOW);
        }
        else if (TickCounter >= TIM_BURST2 && TickCounter <= TIM_BURST2 + TIM_BURSTLEN2)
        {
                if (TickCounter & 0x0004) digitalWrite(RATTLELED, HIGH);
                else digitalWrite(RATTLELED, LOW);
        }
        else if (TickCounter >= TIM_BURST3 && TickCounter <= TIM_BURST3 + TIM_BURSTLEN3)
        {
                if (TickCounter & 0x0004) digitalWrite(RATTLELED, HIGH);
                else digitalWrite(RATTLELED, LOW);
        }
        else
        {
                digitalWrite(RATTLELED, LOW);           // If no burst is going, 
        }
        
        delay(1); // Added this dummy delay() to make sure the code takes more than 1 ms to execute.
}
