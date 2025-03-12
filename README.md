# Installing a Fan on the Orange Pi Zero 3

## Requirements

- **1x 5V 40mm Fan**  
- **1x NPN Transistor** (recommended: BC338)  

## Electrical Connection

1. **Transistor Connections**:
   - **Collector**: Connect to the **GND** of the fan.
   - **Emitter**: Connect to the **GND** of the Orange Pi Zero 3.
   - **Base**: Connect to the **PC10** pin (as per the official Orange Pi pinout).

2. **Power Connections**:
   - Connect the **5V** pin of the fan to the **5V** pin of the Orange Pi.  
     - It is recommended to use the **5V - IN/OUT** pin, as it is directly connected to the power source to avoid any instability.

![Orange Pi Zero 3 Pinout](https://lh4.googleusercontent.com/proxy/njXWQMmeFZxeZAsP1BXV1Niu8hTMe-to3ukp4wKiUOax4-u0lBHouYH4FHbZMWmMWS9VhVvS6P7HTfuYJ4590b4HlhGuLuX7Hnwg-HPpAAcSZw)

## Installation

Once the electrical connections are complete, install the fan control service using the installation script.

1. **Grant Execution Permissions**:
   ```bash
   sudo chmod +x ./install
   ```

2. **Run the Installation Script**:
   ```bash
   ./install
   ```

After completing these steps, the fan will be fully operational on your Orange Pi Zero 3.

---

### Notes:
- Ensure all connections are secure to avoid short circuits or damage to the board.
- Double-check the pinout to confirm the correct GPIO pin (PC10) is used.