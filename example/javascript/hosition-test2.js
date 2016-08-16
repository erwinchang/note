var y = 1;

function f(){
    y = 0;
    return;
    function y(){}
}
f();
console.log(y);
