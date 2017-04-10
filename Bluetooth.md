## [Bluetooth][2]

- [藍牙3.0+高速版本技術及增強規格介紹][6]
    - 2004年底推出V2.0 + EDR的規格，其中EDR可提供1~3 Mbps的增強傳輸率。
    - 新一代的V3.0 + HS規格也已在2009年4月推出，它納入了802.11 MAC/PHY技術，透過802.11的協定轉換層(PAL)，能將資料傳輸速度提昇到24Mbps，相當於v2.x + EDR的八倍
    
- [搶進行動上網裝置　Wi-Fi/藍牙4.0合作無間][5]

- [Bluetooth 4.2 讓每個藍牙裝置都有能連上網路的 IP 門牌，物聯網應用更加到位][3]
    - 透過 IP6v6/6LoWPAN 或 Bluetooth Smart 閘道連上網際網路，讓加上藍牙 4.2 的裝置，都能擁有自己的 IP 門牌
    
- [藍牙多模應用與認證規範面面觀][7]    
    
### Implementation
- Bluetooth operates at frequencies between 2402 and 2480 MHz, or 2400 and 2483.5 MHz including guard bands 2 MHz wide at the bottom end and 3.5 MHz wide at the top.
- 頻帶在：2.4G

- Devices functioning with GFSK are said to be operating in basic rate (BR) mode where an instantaneous data rate of 1 Mbit/s is possible.
- BR表示使用Base Rate即 1Mbit/s ，採爭GFSK編碼方式

- The term Enhanced Data Rate (EDR) is used to describe π/4-DPSK and 8DPSK schemes, each giving 2 and 3 Mbit/s respectivel

- The combination of these (BR and EDR) modes in Bluetooth radio technology is classified as a "BR/EDR radio".

### Uses
- Range is power-class-dependent, but effective ranges vary in practice

#### clase來決定功秏等級

| class | max power (mW) |
|:------|:---------------|
| 1     | 100 |
| 2     | 2.5 |
| 3     | 1   |
| 4     | 0.5 |

#### Bluetooth version

| version | max speed | maximum range |
|:--------|:----------|:----|
| 3.0     | 25Mbit/s  | 10m |
| 4.0     | 25Mbit/s  | 60m |
| 5       | 50Mbit/s  | 240m |

#### Communication and connection

- A master BR/EDR Bluetooth device can communicate with a maximum of seven devices in a piconet (an ad-hoc computer network using Bluetooth technology), though not all devices reach this maximum.

- The Bluetooth Core Specification provides for the connection of two or more piconets to form a scatternet,

- Being a master of seven slaves is possible

- Bluetooth is a packet-based protocol with a master-slave structure. 
- One master may communicate with up to seven slaves in a piconet. All devices share the master's clock

#### Bluetooth Protocol Stack

<a href="http://imgur.com/Ig3fLHx"><img src="http://i.imgur.com/Ig3fLHx.png" title="source: imgur.com" /></a>

- Mandatory protocols for all Bluetooth stacks are: **LMP**, **L2CAP** and **SDP**.
- In addition, devices that communicate with Bluetooth almost universally can use these protocols: **HCI** and **RFCOMM**
- LMP
    - The Link Management Protocol (LMP) is used for set-up and control of the radio link between two devices. Implemented on the controller.
- L2CAP
    - The Logical Link Control and Adaptation Protocol (L2CAP) is used to multiplex multiple logical connections between two devices using different higher level protocols.
    -  Provides segmentation and reassembly of on-air packets
    - In Basic mode, L2CAP provides packets with a payload configurable up to 64 kB, with 672 bytes as the default MTU, and 48 bytes as the minimum mandatory supported MTU.
- SDP    
    - The Service Discovery Protocol (SDP) allows a device to discover services offered by other devices, and their associated parameters
- RFCOMM
    - Radio Frequency Communications (RFCOMM) is a cable replacement protocol used for generating a virtual serial data stream.
    -  i.e. it is a serial port emulation
- BNEP
    - The Bluetooth Network Encapsulation Protocol (BNEP) is used for transferring another protocol stack's data via an L2CAP channel.
    - Its main purpose is the transmission of IP packets in the Personal Area Networking Profile. BNEP performs a similar function to SNAP in Wireless LAN.

----------------

## [Bluetooth wiki][1]

- 藍牙（英语：Bluetooth）。這是一種無線技術標準
- 使用短波特高頻（UHF）無線電波，經由2.4至2.485 GHz的ISM頻段來進行通信
- 最初的設計，是希望建立一個RS-232數據線的無線通訊替代版本
- 藍牙技術目前由藍牙技術聯盟（SIG Bluetooth Special Interest Group）來負責維護其技術標準

| ver | note |
|:----|:-----|
| 0.7  | 1998年时藍牙推出0.7规格，支援Baseband與LMP（Link Manager Protocol）通讯协定两部份 |
| 1.0  | SDP（Service Discovery Protocol）协定、TCS（Telephony Control Specification）协定 |
|      | 1999年7月26日正式公布1.0版，确定使用2.4GHz频谱，最高资料传输速度1Mbps |
| 2.0 | Bluetooth 2.0将传输率提升至2Mbps、3Mbps，遠大於1.x版的1Mbps（实际约723.2kbps） |
|     | EDR（Enhanced Data Rate，配合2.0的技术标准，将最大传输速度提高到3Mbps） |
|     | A2DP（Advanced Audio Distribution Profile，一个控音轨分配技术，主要应用于立体声耳机） |
| 2.1 | Sniff省电功能, 简单安全配对（SSP） |
| 3.0+ HS | 集成802.11PAL最高速度可達24Mbps。是2.0速度的8倍 |
| 4.0 | 蓝牙4.0是Bluetooth SIG于2010年7月7日推出的新的规范。其最重要的特性是支持省电 |
|     | 低功耗蓝牙, 傳統蓝牙, 高速蓝牙 |
|     | Bluetooth Low Energy（后简称低功耗蓝牙） |
|     | 分Single mode與Dual mode |
|     | Single mode只能與BT4.0互相傳輸無法向下相容（與3.0/2.1/2.0無法相通） |
|     | Dual mode可以向下相容可與BT4.0傳輸也可以跟3.0/2.1/2.0傳輸 |
| 4.1 | 2013, 智能連接：增加設置設備間連接頻率的支持 |
| 5   | 2016/6 , 有效传输距离上将是4.2LE版本的4倍（理论上可达300米） |
|     | 传输速度将是4.2LE版本的2倍（速度上限为24Mbps） |

- 藍牙協議堆疊

| layer | protocol |
|:-------|:--------|
| 核心協議層 | HCI、LMP、L2CAP、SDP |
| 線纜替換協定層 | RFCOMM |
| 電話控制協定層 | TCS-BIN |
| 選用協議層 | PPP、TCP、IP、UDP、OBEX、IrMC、WAP、WAE |

- 藍牙規範
    - 藍牙1.1定義的profile有13個。SIG認為藍牙裝置有4個最基本的Profile
    - General Access Profile（GAP）
    - Service Discovery Application Profile（SDAP）
    - Serial Port Profile（SPP）
    - General Object Exchange Profile（GOEP）
    
-----------

## 實際產品
[HC-06 藍牙/藍芽轉 UART 模組][4]

[1]:https://zh.wikipedia.org/wiki/%E8%97%8D%E7%89%99
[2]:https://en.wikipedia.org/wiki/Bluetooth
[3]:http://chinese.engadget.com/2015/01/21/bluetooth-4-2-taiwan/
[4]:https://www.taiwaniot.com.tw/shop/module-sensor/comm/hc-06-%E5%BE%9E%E6%A9%9F-%E8%97%8D%E7%89%99%E8%97%8D%E8%8A%BD%E8%BD%89-uart-%E6%A8%A1%E7%B5%84-%E5%85%B7%E5%BA%95%E6%9D%BF%E6%8F%90%E4%BE%9Barduino%E7%AF%84%E4%BE%8B/
[5]:http://www.2cm.com.tw/technologyshow_content.asp?sn=1011010024
[6]:http://www.digitimes.com.tw/tw/dt/n/shwnws.asp?id=0000177335_79G4RIR22UO08Y6RS21Y8#ixzz4dpgxUYTk
[7]:http://www.technical-direct.com/%E8%97%8D%E7%89%99%E5%A4%9A%E6%A8%A1%E6%87%89%E7%94%A8%E8%88%87%E8%AA%8D%E8%AD%89%E8%A6%8F%E7%AF%84%E9%9D%A2%E9%9D%A2%E8%A7%80/
