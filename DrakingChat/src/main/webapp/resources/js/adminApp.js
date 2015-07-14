'use strict';

var AngularAdminApp = {};

var App = angular.module('AngularAdminApp', ['AngularSpringApp.filters', 'AngularSpringApp.services', 'AngularSpringApp.directives']);

// Declare app level module which depends on filters, and services
App.config(['$routeProvider', function ($routeProvider) {
    $routeProvider.when('/users', {
        templateUrl: 'admin/users',
        controller: UserController
    });

    $routeProvider.when('/SocialProfile', {
        templateUrl: 'SocialProfile/UserProfile',
        controller: TrainController
    });
    
    
    $routeProvider.otherwise({redirectTo: '/SocialProfile'});
}]);

