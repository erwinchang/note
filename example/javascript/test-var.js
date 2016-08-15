 var g_var = 1;
 g_novar = 2;

 (function (){
     g_fromfunc = 3;
 }());

console.log(delete g_var);
console.log(delete g_novar);
console.log(delete g_fromfunc);

console.log(typeof g_var);
console.log(typeof g_novar);
console.log(typeof g_fromfunc);
