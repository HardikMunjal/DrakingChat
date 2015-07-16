'use strict';


function UserController($scope, $http, $routeParams) {
	  
	   // I can also use '/shivi/admin/listUser' instead of listUser
	   
	   $http.get('listUser').
       success(function (data, status, headers, config) {
           // this callback will be called asynchronously
           // when the response is available
           
           $scope.users = data;

       }).
       error(function (data, status, headers, config) {
           // called asynchronously if an error occurs
           // or server returns response with an error status.
       });
	   
	   
	}
