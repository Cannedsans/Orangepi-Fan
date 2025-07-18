# Installing a Fan on the Orange Pi Zero 3

## Requirements

- 1x 5V 40mm Fan  
- 1x NPN Transistor (recommended: BC338)  
- 1x 1kΩ Resistor (required for the transistor base)

## Electrical Connection

### 1. Transistor Setup (NPN)

A 1kΩ resistor is required between the GPIO (PC10) and the base of the transistor to limit current and protect the Orange Pi.

Diagram:

Orange Pi (PC10) ───[1kΩ resistor]───► B (Base)  
                                        │  
                                     [NPN]  
                                        │  
      Fan (–) ─────────────────────────► C (Collector)  
                                        │  
Orange Pi GND ────────────────────────► E (Emitter)  

Fan (+) ──────────────────────────────► 5V (from Orange Pi)

- Collector (C) → Connect to the negative (-) wire of the fan  
- Emitter (E) → Connect to the GND of the Orange Pi  
- Base (B) → Connect to PC10 through a 1kΩ resistor

### 2. Power Connections

- Fan (+) → Connect to the 5V pin of the Orange Pi  
  - It is recommended to use the 5V IN/OUT pin, as it is directly connected to the power source

Reference: [https://github.com/debajyotisarkarhome/PWM-Based-RPi-Fan](https://github.com/debajyotisarkarhome/PWM-Based-RPi-Fan)

Pinout for reference:  
![Orange Pi Zero 3 Pinout](https://lh4.googleusercontent.com/proxy/njXWQMmeFZxeZAsP1BXV1Niu8hTMe-to3ukp4wKiUOax4-u0lBHouYH4FHbZMWmMWS9VhVvS6P7HTfuYJ4590b4HlhGuLuX7Hnwg-HPpAAcSZw)

## Installation

After completing the wiring, install the fan control service using the script provided.

1. Grant execution permissions:
   ```bash
   sudo chmod +x ./install

Run the installation script:

    ./install

