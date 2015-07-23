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
