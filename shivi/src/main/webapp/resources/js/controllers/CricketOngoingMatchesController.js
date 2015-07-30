var CricketOngoingMatchesController = function ($scope, $http, $routeParams) {
	 var url ='https://query.yahooapis.com/v1/public/yql?' +
     'q=select%20*%20from%20cricket.teams&format=json' +
     '&diagnostics=true&env=store%3A%2F%2F0TxIGQMQbObzvU4Apia0V0&callback=';
	 
	 $scope.juju="controller is working"; 
	 
	 var config = { withCredentials: true,
        headers: {
                    'Content-Type': 'application/json; charset=utf-8'
        }
 };
	 $http.get('http://www.w3schools.com/angular/customers.php',config).
     success(function (data, status, headers, config) {
         // this callback will be called asynchronously
         // when the response is available
         
         $scope.users = data;

     }).
     error(function (data, status, headers, config) {
         // called asynchronously if an error occurs
         // or server returns response with an error status.
     });
	   
	 
};