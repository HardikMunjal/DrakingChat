'use strict';

/**
 * CarController
 * @constructor
 */
var CarController = function($scope, $http) {
	
	
    $scope.fetchUsersList = function() {
        $http.get('admin/listUser').success(function(userList){
            $scope.users = userList;
        });
    };

    $scope.addNewCar = function(newCar) {
        $http.post('cars/addCar/' + newCar).success(function() {
            $scope.fetchCarsList();
        });
        $scope.carName = '';
    };



    $scope.fetchFetchUsersList();
};