## OBD
------
### [Getting Started with OBD-II][4]
----
### [Vehicle Emissions On-Board Diagnostics (OBD)][5]

#### Vehicle Service Information / Technical Documents
[On-Board Diagnostic Hand-Held Scan Tool Technology][6]
- In  the  early  1980s,  automobile  manufacturers  began  using  electronics  and  on-board computers to control many of the engine functions.
- In 1989, CARB issued regulations requiring the second generation of OBD regulations, often referred to as OBDII.
- OBD systems on all 1994 and newer vehicles sold nationwide and known as Federal OBD.
- SAE recommended practices (SAE J1978 and J1979) and the number of engine parameters available on OBD hand-held scan tools.
- SAE Requirements for OBD Scan Tools   

| item | nte |
|:-----|:----|
|J1962  | describes the standardized 16-pin trapezoidal connector|
|J1978 |  describes the basic functions that an OBD Scan Tool will support |
|J1979 | describes diagnostic test modes for emission related diagnostic data |
| | mode #1, engine parameters, MIL status and readiness codes |
| | mode #2, powertrain freeze frame data |
| | mode #3, related  powertrain  diagnostic  trouble  codes (DTCs) |
| | mode #4, Clear/Reset  emission-related  diagnostic  information  including MIL status, DTCs |
| | mode #5, oxygen sensor monitor test results |
| | mode #6, continuous monitor systems , ex. EGR |
| | mode #7, continuous monitor systems , ex. ful trim,misfire |
|J1850,  ISO  9141-2  and  ISO  14230-4 | describes  the  various  communication protocol |
|J2012 | describes the recommended standardization of numeric DTCs  |


#### OBD and Inspection and Maintenance / Final Implementation Guidance

[Performing Onboard Diagnostic System Checks as Part of a Vehicle Inspection and Maintenance Program][7]

- Environmental Protection Agency (EPA) to set guidelines for states to follow in designing and running vehicle inspection and maintenance (I/M) programs.
- 由EPA(美國國家環境保護局)來規定檢測車子數據及設定相關狀態(即I/M Programs)

- MIL(Malfunction Indicator Light)
The MIL is a light on the dashboard to alert the driver of an emissions related problem.      

<a href="http://imgur.com/F1IFcxC"><img src="http://i.imgur.com/F1IFcxC.png" title="source: imgur.com" /></a>

- [OBD Readiness Testability Issues][8]
<a href="http://imgur.com/H8G4vKC"><img src="http://i.imgur.com/H8G4vKC.png" title="source: imgur.com" /></a>
-----------
## SAE

- SAE International, initially established as the Society of Automotive Engineers, is a U.S.-based
- 美國汽車工程師協會


### Standard
- E/E Diagnostic Test Modes
    - [J1979_201202][2]
    
SAE J1979 / ISO 15031-5 set includes the communication between the vehicle's OBD systems and test equipment implemented across vehicles within the scope of the legislated emissions-related OBD.

-----



### SparkFun OBD-II UART

 [SparkFun OBD-II UART][1]
 
 
**ELM327**

 Support for all legislated OBD II protocols
 - ISO 15765-4 (CAN)
 - ISO 14230-4 (Keyword Protocol 2000)
 - ISO 9141-2 (Asian, European, Chrysler vehicles)
 - SAE J1850 VPW (GM vehicles)
 - SAE J1850 PWM (Ford vehicles)

Support for non-legislated OBD protocols
 - ISO 15765
 - ISO 11898 (raw CAN)

Support for SAE J1939 OBD protocol

----
### [OBD II Uart Hookup Guide][3]


[1]:https://www.sparkfun.com/products/9555
[2]:http://standards.sae.org/j1979_201202/
[3]:https://learn.sparkfun.com/tutorials/obd-ii-uart-hookup-guide
[4]:https://learn.sparkfun.com/tutorials/getting-started-with-obd-ii
[5]:https://www.epa.gov/state-and-local-transportation/vehicle-emissions-board-diagnostics-obd
[6]:https://nepis.epa.gov/Exe/ZyPdf.cgi?Dockey=P1002KO4.pdf
[7]:https://nepis.epa.gov/Exe/ZyPdf.cgi?Dockey=P1002KRN.pdf
[8]:https://nepis.epa.gov/Exe/ZyPdf.cgi?Dockey=P100EPD8.pdf
