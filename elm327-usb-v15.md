## ELM 323

ELM 327 Interface Supports all OBDII protocols 
USB V1.5a


- [CAN & OBD2][1]
    - My goal is to read some basic OBD II information. I am using a PIC 18F2585 c/w ECAN module, connected to MCP 2551, then attached to OBD II connector in my vehicle.

- [設計解析：OBD II藍牙配接器][2]
    - RDA Microelectronics的RDA5869藍牙系統器晶片（SoC），使用的是55nm製程，內置ARM7微控制器
    
- [DBPOWER ELM327 Wi-Fi Interface (OBD II) review][3]   

- [OBD2 汽車診斷 ELM327 USB介面 CP2102 PIC18F25K80 Ford Focus Kuga隱藏][4]

- [PIC18F25K80 Chip V1.5 Firmware Bluetooth ELM327 OBD OBDII Car Diagnostic Scanner Supports Multi-Cars ELM 327 1.5 Auto OBD Tool][5]

- [A+ Firmware V1.5 PIC18F25K80 Chip ELM327 WIFI Wireless][6]

- [基於Microchip PIC18F25K80的OBDII方案][7]
 低功耗應用在OBDII 方案中是一個重點考慮物件，因為汽車OBD介面是長期帶電的**即使熄火後也會供電** (要確認一下，若這樣子設計時就要注意power)
 
 - [OBD II 简易操作手册 ][8]
 
 - [ELM327 Bluetooth Car Diagnostic Too][13]
 
 ### github
 
 - [Microchip PIC18F25K80][9]
     - [J1939 C Library for CAN-Enabled PICmicro® Microcontrollers][10]
- [Set of CAN MPLAB projects for PIC microcontroller][11]     


### 其它參考
- [汽车信息管理和记录系统][12]
- [Dissection of a counterfeit ELM327 OBDII Adapter from China][14]

[1]:http://www.microchip.com/forums/m481814.aspx
[2]:http://archive.edntaiwan.com/www.edntaiwan.com/ART_8800514416_3000000_TA_bcd4538f_2.HTM
[3]:https://hackaday.io/project/2523/logs
[4]:http://goods.ruten.com.tw/item/show?21106198294834
[5]:https://www.aliexpress.com/store/product/PIC18F25K80-Chip-V1-5-Firmware-Bluetooth-ELM327-OBD-OBDII-Car-Diagnostic-Scanner-Supports-Multi-Cars-ELM/1854998_32711176460.html
[6]:https://www.import-express.com/spider/getSpider?&u0=74JK5WIFI4JK5Wireless4JK5For4JK5Android4JK5i&u1=2YK52YK52CR52DL50RB52YK5item2YK5A4JK5Firmwar&u2=OS4JK5ELM4JK53274JK514JK552YK5327724270309DT5&u3=e4JK5V14JK554JK5PIC18F25K804JK5Chip4JK5ELM32
[7]:http://www.wpgholdings.com/news/detail/zhtw/program/19309
[8]:http://www.wpgholdings.com/uploads/files/IoT/15Q3/SAC/153S4_0239_usermanual.pdf
[9]:http://www.microchip.com/wwwproducts/en/en550200
[10]:http://www.microchip.com/wwwAppNotes/AppNotes.aspx?appnote=en020237
[11]:https://github.com/PoJD/can
[12]:http://blog.csdn.net/haima1998/article/details/18599603
[13]:http://www.totalcardiagnostics.com/elm327-bluetooth/
[14]:https://timyouard.wordpress.com/2015/09/02/disection-of-a-counterfeit-elm327-obdii-adapter-from-china/
