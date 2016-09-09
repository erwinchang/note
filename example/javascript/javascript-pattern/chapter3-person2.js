var Person = function (name) {
    this.name = name;
}

Person.prototype.say = function () {
    return "I am " + this.name;
}

var adm = new Person("Adam");
console.log(adm.say());
