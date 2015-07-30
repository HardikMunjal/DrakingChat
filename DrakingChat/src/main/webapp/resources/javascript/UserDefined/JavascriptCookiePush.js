/**
 * New node file
 */

$(document).ready(function(){
    $("p").click(function(){


        $.cookie.json = true;

     var user = [{ name: "name", age: 25 },{ name: "name", age: 25 }]

     user.push({ name: "hardik", age: 25 });

$.cookie('user', user);
var currentUser = $.cookie('user');
alert('User name is ' + currentUser[2].name);
    });
});
