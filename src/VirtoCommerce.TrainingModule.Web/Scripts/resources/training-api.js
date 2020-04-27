angular.module('trainingModule')
    .factory('trainingModule.webApi', ['$resource', function ($resource) {
        return $resource('api/trainingModule');
}]);
