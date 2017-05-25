var serialPort = require("serialport"); 
var SerialPort = serialPort.SerialPort 
var sp = new SerialPort('/dev/ttyUSB0', {  
  baudrate: 115200,  
  parser: serialPort.parsers.readline("\n") 
}); 

sp.on('open', function() {    
  console.log('open');    
  sp.on('data', function(data) {    
  }); 
});
