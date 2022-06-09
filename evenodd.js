
document.write("<h1>Even & ODD Number Finder<h1>")

function evenOdd(){
for (var i = 1; i <= 75;i++){
if (i % 2== 0){   
}
}
for (var i = 1; i  <= 80; i++) {
if (i % 2 != 0) {

}
}
var num = parseInt(prompt("Provide any number"));
if(num % 2 != 0)
document.write(num + ": is an odd Number");
else
    document.write(num + ": is an even Number");
}
evenOdd();