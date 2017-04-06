
## [OBD II Uart Hookup Guide][4]

STN1110 is an OBD to UART interpreter
It is fully compatible with the de facto industry standard ELM327 command set

### [stn1110-ds.pdf][1]
Multiprotocol OBD to UART Interpreter

- Feature
    - Support for all legislate OBD-II
        - ISO 15765-4 (CAN)
        - ISO 14230-4 (Keyword Protocol 2000)
        - ISO 9141-2 (Asian,European,Chrsier vehicles)
        - SAE J1850 VPW (GM vehicles)
        - SAE J1850 PWM (Ford vehicles)
    - Support for non-legislate OBD protocols:
        - ISO 15765
        - ISO 11989 (raw CAM)
    - Support for the heavy-duty SAE J1939     

- OBD Port Connector
<a href="http://imgur.com/HQcA8aT"><img src="http://i.imgur.com/HQcA8aT.png" title="source: imgur.com" /></a>

- STN1110 IC
<a href="http://imgur.com/HuYTWtv"><img src="http://i.imgur.com/HuYTWtv.png" title="source: imgur.com" /></a>

- CAN Transceiver
    - ISO 15765
    - CAN HIGHT(CAN H) pin6, CAN LOW(CAN L) pin14
    - Bus State: Active whe CANH pulled HIGH, CANL pulled LOW, idel whe signals are floating
    - CANH Signal Voltage: +3.5V (+2.75 ~ +4.5V)
    - CANL Signal Voltage: +1.5V (+0.5 ~ +2.25V)
<a href="http://imgur.com/RQAbm5o"><img src="http://i.imgur.com/RQAbm5o.png" title="source: imgur.com" /></a>

- ISO Transceiver
<a href="http://imgur.com/5hpaoLc"><img src="http://i.imgur.com/5hpaoLc.png" title="source: imgur.com" /></a>

- J1850 Transceiver
    - SAE J1850 PWM (Ford vehicles)
        - BUS+ pin2, BUS- pin10
        - Singal Voltage: 0V/5V
        - Bit Timing: 1bit-8us, 0bit-16us, Start of Frame 48us
    - SAE J1850 VPW (GM vehicles)
        - BUS+ pin2
        - Bus State: Bus idles low
        - Signal Voltage: 7V-0V
        - Bit Timing: 1bit-HIGHS 64us, 0bit- HISHS 128us, Start of Frame- HIGHS 200us
<a href="http://imgur.com/QMErWxh"><img src="http://i.imgur.com/QMErWxh.png" title="source: imgur.com" /></a>
<a href="http://imgur.com/3zKRN7E"><img src="http://i.imgur.com/3zKRN7E.png" title="source: imgur.com" /></a>

- The OBD-II UART board has both the STN1110 and the MCP2551 chips populated on it : [Board Schematic][2]
- This communicates with the CAN, ISO and J1850 transceivers. Voltage on the board is regulated to both 5V and 3.3V for all of the components to function properly


   







[1]:https://www.scantool.net/scantool/downloads/97/stn1110-ds.pdf
[2]:https://learn.sparkfun.com/tutorials/obd-ii-uart-hookup-guide
[4]:https://learn.sparkfun.com/tutorials/obd-ii-uart-hookup-guide
