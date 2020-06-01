angular.module('trainingModule')
    .controller('trainingModule.helloWorldController', ['$scope', 'trainingModule.webApi', function ($scope, api) {
        var blade = $scope.blade;
        blade.title = 'trainingModule';

        blade.refresh = function () {
            api.get(function (data) {
                blade.title = 'trainingModule.blades.hello-world.title';
                blade.data = data.result;
                blade.isLoading = false;
            });
        };

        blade.refresh();
    }]);
