## OBD
------
### [Getting Started with OBD-II][4]

- OBD systems are designed to monitor the performance of some of an engine’s major components including those responsible for controlling emission
- In other words, OBD is the language of the Engine Control Unit (ECU), and it was designed to help fight emissions and engine failures.
- 通過OBD可以取得車子狀態數值
- 當車子發生DTCs(Diagnostic Trouble Codes,即ECU產生錯誤碼)，此時MIL會亮(Malfunction Indicator Light，即引擎錯誤燈號)
- 需通過OBD介面讀取車子錯誤碼以分析問題，並且清除錯誤碼
- 當車子發生問題時，會產生錯誤碼，但若元件數值回到正常值，此時錯誤碼不會自動清除，即引擎錯誤燈號會一直亮著

<a href="http://imgur.com/AiScfbl"><img src="http://i.imgur.com/AiScfbl.png" title="source: imgur.com" /></a>

- ELM 327 USB V1.5a

[wiki obd][12]

| pin | define                       | description |
|:----|:-----------------------------|:------------|
| 2   | J1850 Bus+                   | Bus Positive Line of SAE J1850 PWM and VPW |
| 4/5 | Chassis Ground/Signal Ground | |
| 6   | CAN(J-2334) High             | CAN-High (ISO 15765-4 and SAE J2284) |
| 7   | iso 9141-2 K-Line            | K-Line of ISO 9141-2 and ISO 14230-4 |
| 10  | J1850 Bus-                   | Bus Nagative Line of SAE J1850 PWM only (not SAE J1850 VPW) |
| 14  | CAN(J-2234) Low              | CAN-Low(ISO 15765-4 and SAE J2284)
| 15  | ISO 9141-2 L-Line            | L-Line of ISO 9141-2 and ISO 14230-4 |
| 16  | Battery Power |

#### ECU (Engine/Electronic COntrol Unit)
- ECU can allow the user to make the engine function at various performance levels and various economy levels
- On new cars, these are all typically microcontrollers.

ECU include

| item | note |
|:-----|:-----|
| ECM (Engine Control Module) | affecting things like ignition timing, air to fuel ratios, and idle speeds.|
| VCM (Vehicle Control Module) | Another module name that controls the engine and vehicle performance. |
| TCM (Transmission Control Module) |  This handles the transmission(ex. transmission fluid temperature, throttle position) |
| PCM (Powertrain Control Module) | Typically, a combination of an ECM and a TCM |
| EBCM (Electronic Brake Control Module) | This controls and reads data from the anti-lock braking system (ABS) |
| BCM (Body Control Module) | controls vehicle body features, such as power windows, power seats, etc. |


#### Diagnostic Trouble Code (DTC)

These codes are used to describe where an issue is occurring on the vehicle and are defined by SAE

These codes take the following format

| item | note |
|:-----|:-----|
| First unit identifies the type of error code ||
| Pxxxx | powertrain |
| Bxxxx | body |
| Cxxxx | chassis |
| Uxxxx | class 2 network |
|||
|Second digit shows whether the code is manufacturer unique or no |
| item | note |
| x0xxx | government-required code |
| x1xxx | manufacturer-specific code |
|||
| Third digit shows us what system the trouble code references ||
| xx1xx / xx2xx | show air and fuel measurements |
| xx3xx | shows ignition system |
| xx4xx | shows emissions systems |
| xx5xx | references speed/idle control |
| xx6xx | deals with computer systems |
| xx7xx /xx8xx | involve the transmission |
| xx9xx | notates input/output signals and controls |
|||
| Digits four and five show the specific failure code |
| xx00 - xx99 | |

#### [OBD-II PIDs][9] (On-board diagnostics Parameter IDs)

OBD-II PIDs (On-board diagnostics Parameter IDs) are codes used to request data from a vehicle, used as a diagnostic tool
SAE standard J/1979 defines many PID

Typically, an automotive technician will use PIDs with a scan tool connected to the vehicle's OBD-II connector


SAE J1979

Vehicle manufacturers are not required to support all modes.
<a href="http://imgur.com/qRAAgYn"><img src="http://i.imgur.com/qRAAgYn.png" title="source: imgur.com" /></a>


#### OBD-II Protocols

- SAE J1850 PWM
    - This signal is **Pulse Width Modulation**, which runs at 41.6 kbps
    - Signal Voltage: 0V-5V
    - **Ford vehicles**
<a href="http://imgur.com/HAmQLJA"><img src="http://i.imgur.com/HAmQLJA.png" title="source: imgur.com" /></a>

- SAE J1850 VPW
    - This protocol is Variable Pulse Width, which runs at 10.4 kbps.
    - Signal Voltage: 0V-7V
    - **GM vehicles**
<a href="http://imgur.com/YvrvjEm"><img src="http://i.imgur.com/YvrvjEm.png" title="source: imgur.com" /></a>

- ISO 9141-2
    - 10.4 kbps and is asynchronous serial communication
    - Signal Voltage: 0V-12V
    - **Chrysler, European, or Asian vehicle**
<a href="http://imgur.com/gC9Av08"><img src="http://i.imgur.com/gC9Av08.png" title="source: imgur.com" /></a>

- ISO 14230 KWP2000
    - This is the Keyword Protocol 2000, another asynchronous serial communication
    - Signal Voltage: 0V-12V
    - **Chrysler, European, or Asian vehicle**
<a href="http://imgur.com/7mkidW7"><img src="http://i.imgur.com/7mkidW7.png" title="source: imgur.com" /></a>

- ISO 15765 CAN
    - This protocol has been mandated in **all vehicles sold in the US from 2008 and later**
    - It’s a two-wire communication method and can run at up to 1Mbps
    - Signal Voltage: CANH:4.5-2.75V, CANL:0.5-2.25V
<a href="http://imgur.com/bKYdYbq"><img src="http://i.imgur.com/bKYdYbq.png" title="source: imgur.com" /></a>

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

----

## 其它參考

[OBD-II Fault Code Reading with OBDKey][10]
[OBD Implementation in J1939][11]

[1]:https://www.sparkfun.com/products/9555
[2]:http://standards.sae.org/j1979_201202/
[3]:https://learn.sparkfun.com/tutorials/obd-ii-uart-hookup-guide
[4]:https://learn.sparkfun.com/tutorials/getting-started-with-obd-ii
[5]:https://www.epa.gov/state-and-local-transportation/vehicle-emissions-board-diagnostics-obd
[6]:https://nepis.epa.gov/Exe/ZyPdf.cgi?Dockey=P1002KO4.pdf
[7]:https://nepis.epa.gov/Exe/ZyPdf.cgi?Dockey=P1002KRN.pdf
[8]:https://nepis.epa.gov/Exe/ZyPdf.cgi?Dockey=P100EPD8.pdf
[9]:https://en.wikipedia.org/wiki/OBD-II_PIDs
[10]:http://www.kbmsystems.net/files/Engine%20ECU%20Fault%20Code%20Reading%20with%20OBDKey.pdf
[11]:http://www.sae.org/events/training/symposia/obd/presentations/2005swenson.pdf
[12]:https://en.wikipedia.org/wiki/On-board_diagnostics
