angular.module('customerReviewsModule')
    .controller('customerReviewsModule.helloWorldController', ['$scope', 'customerReviewsModule.webApi', function ($scope, api) {
        var blade = $scope.blade;
        blade.title = 'CustomerReviewsModule';

        blade.refresh = function () {
            api.get(function (data) {
                blade.data = data.result;
                blade.isLoading = false;
            });
        };

        blade.refresh();
    }]);