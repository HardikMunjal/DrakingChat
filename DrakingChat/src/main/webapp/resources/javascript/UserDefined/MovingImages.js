/**
 * New node file
 */

function ask(){
	 var code = prompt("You need to take code from admin", "Enter Code");
	    
	    if (code === 'pokemon') {
	    	
	        timer();
	        
	    }
}

function reset1(){
clearTimeout(my_time);
document.getElementsByClassName("example").style.left= "500px";
document.getElementsByClassName("example").style.top= "100px";
document.getElementById("msg").innerHTML="";

}




function move_img(str) {

      for(var i=0; i<14; i++){

var x=document.getElementsByClassName('example')[i].offsetTop;
x= x +100;
document.getElementsByClassName('example')[i].style.top= x + "px";
        }

}

function disp(){


    for(var i=0; i<14; i++){


         (function (i) {
             setTimeout(function(){
                 alert(i);
var step=10; // Change this step value
//alert("Hello");
var y=document.getElementsByClassName('example')[i].offsetTop;
var x=document.getElementsByClassName('example')[i].offsetLeft;
if(y < 120 ){y= y +step;
document.getElementsByClassName('example')[i].style.top= y + "px"; // vertical movment
}else{
if(x < 500+(40*i)){x= x +step;
document.getElementsByClassName('example')[i].style.left= x + "px"; // horizontal movment
}
}
//////////////////////
        }, 1);
 
}
        (i));
        }

}
function timer(){
    for(var i=0; i<14; i++){

disp();


        
var y=document.getElementsByClassName('example')[i].offsetTop;

        
var x=document.getElementsByClassName('example')[i].offsetLeft;
document.getElementById("msg").innerHTML="X: " + x + " Y : " + y
my_time=setTimeout('timer()',1);
}
}

