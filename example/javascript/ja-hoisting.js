function foo(){
    console.log('global foo');
}
function bar(){
    console.log('global bar');
}
function hoistMe(){
    var bar;
    console.log(typeof foo);
    console.log(typeof bar);

    foo();
//    bar();

    function foo(){
        console.log('local foo');
    }
    bar = function(){
        console.log('local bar');
    };
}
hoistMe();
