## Bluetooth

### Implementation
- Bluetooth operates at frequencies between 2402 and 2480 MHz, or 2400 and 2483.5 MHz including guard bands 2 MHz wide at the bottom end and 3.5 MHz wide at the top.
- 頻帶在：2.4G

- Devices functioning with GFSK are said to be operating in basic rate (BR) mode where an instantaneous data rate of 1 Mbit/s is possible.
- BR表示使用Base Rate即 1Mbit/s ，採爭GFSK編碼方式

- The term Enhanced Data Rate (EDR) is used to describe π/4-DPSK and 8DPSK schemes, each giving 2 and 3 Mbit/s respectivel

- The combination of these (BR and EDR) modes in Bluetooth radio technology is classified as a "BR/EDR radio".

### Uses
- Range is power-class-dependent, but effective ranges vary in practice

#### Communication and connection

- A master BR/EDR Bluetooth device can communicate with a maximum of seven devices in a piconet (an ad-hoc computer network using Bluetooth technology), though not all devices reach this maximum.

- The Bluetooth Core Specification provides for the connection of two or more piconets to form a scatternet,

- Being a master of seven slaves is possible

- Bluetooth is a packet-based protocol with a master-slave structure. 
- One master may communicate with up to seven slaves in a piconet. All devices share the master's clock

[Bluetooth wiki][1]

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

[1]:https://zh.wikipedia.org/wiki/%E8%97%8D%E7%89%99
