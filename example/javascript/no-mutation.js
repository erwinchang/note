console.log("Test");
var rooms = ["H1","H2","H3"];
var newRooms = rooms.map(function (rm){
    if (rm == "H3") { return "H4";}
    else { return rm;}
})

console.log(newRooms);
console.log(rooms);
