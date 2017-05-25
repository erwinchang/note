var SerialPort = require("serialport");
var port = new SerialPort("/dev/ttyUSB0",{
    baudRate: 9600
});

