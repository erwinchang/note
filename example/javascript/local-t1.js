var fact = function (n) {
    if(n == 0){
        return 1;
    } else {
        return n*fact(n-1);
    }
}

console.log("tt");
console.log(fact(3));
