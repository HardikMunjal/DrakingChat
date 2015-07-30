'use strict';

var AngularSpringApp = {};

var App = angular.module('AngularSpringApp', ['AngularSpringApp.filters', 'AngularSpringApp.services', 'AngularSpringApp.directives']);

// Declare app level module which depends on filters, and services
App.config(['$routeProvider', function ($routeProvider) {
    $routeProvider.when('/cars', {
        templateUrl: 'cars/layout',
        controller: CarController
    });

    $routeProvider.when('/SocialProfile', {
        templateUrl: 'SocialProfile/UserProfile',
        controller: TrainController
    });
    
   
    
    $routeProvider.when('/popularity', {
        templateUrl: 'popularity/user',
        controller: RailwayStationController
    });
    $routeProvider.when('/why', {
        templateUrl: 'why/draka',
        controller: TrainController
    });
   
    $routeProvider.when('/users', {
        templateUrl: 'admin/users',
        controller: UserController
    });
    $routeProvider.when('/main', {
        templateUrl: 'main',
        controller: UserController
    });
    $routeProvider.when('/tests', {
        templateUrl: 'test',
        controller: CricketOngoingMatchesController
    });
    $routeProvider.when('/MatchSchedule', {
        templateUrl: 'MatchSchedule',
        controller: UserController
    });

   
    $routeProvider.otherwise({redirectTo: '/SocialProfile'});
}]);

App.controller('DataFetchControl', function ($scope, $http) {
    $scope.ptis = [];
    // Simple GET request example :
    $http.get('/DrakingChat/userDetails').
            success(function (data, status, headers, config) {
                // this callback will be called asynchronously
                // when the response is available
                $scope.ptis = data;
                


            }).
            error(function (data, status, headers, config) {
                // called asynchronously if an error occurs
                // or server returns response with an error status.
            });
});

App.controller('customersCtrl', function($scope, $http) {
	$scope.names = [];
	  $http.get('https://query.yahooapis.com/v1/public/yql?q=select%20*%20from%20cricket.series.ongoing&format=json&diagnostics=true&env=store%3A%2F%2F0TxIGQMQbObzvU4Apia0V0&callback=')
	  .success(function (response) {$scope.names = response.query.results.Series;});
	});
