/**
 * New node file
 */

  var myApp = angular.module('myApp', []);


       myApp.controller('StartUpController', function ($scope) {



           $scope.funding = { startingEstimate: 0 };
           computeNeeded = function () {
               $scope.funding.needed = $scope.funding.startingEstimate * 10;



               $scope.OnSubmit = function () { window.alert("You are going to submit form") };

           };
           $scope.$watch('funding.startingEstimate', computeNeeded);
       }
          );


       myApp.controller('DeathrayMenuController', function ($scope) {
           $scope.isDisabled = false;
           $scope.stun = function () {
               // stun the target, then disable menu to allow regeneration
               $scope.isDisabled = 'true';
           };
       });
       
       myApp.controller('MyCtrl',function($scope) {
    	   
    	   $scope.foo = null;  
    	   
    	   $scope.doSomething = function () {
    	   
    	   $.cookie.json = true;




      	     var user = [{ name: "name", age: 25 },{ name: "name", age: 25 }]

    	     user.push({ name: $scope.foo, age: 25 });

    	$.cookie('user', user);


    	var currentUser = $.cookie('user');
    	    
    	alert('User name is ' + currentUser[2].name);
    	 
    	   
    	   
    	   
    	 
    	    
    	      };
    	});
       
       
       
       