'use strict';

var AngularSpringApp = {};

var App = angular.module('AngularSpringApp', ['AngularSpringApp.filters', 'AngularSpringApp.services', 'AngularSpringApp.directives']);

// Declare app level module which depends on filters, and services
App.config(['$routeProvider', function ($routeProvider) {
    $routeProvider.when('/cars', {
        templateUrl: 'cars/layout',
        controller: CricketOngoingMatchesController
    });

    

   
    $routeProvider.otherwise({redirectTo: '/cars'});
}]);


App.controller('customersCtrl', function($scope, $http) {
	$scope.juju="jbjhbj";
	$scope.names = [];
	  $http.get('https://query.yahooapis.com/v1/public/yql?q=select%20*%20from%20cricket.series.ongoing&format=json&diagnostics=true&env=store%3A%2F%2F0TxIGQMQbObzvU4Apia0V0&callback=')
	  .success(function (response) {$scope.names = response.query.results.Series;});
	});