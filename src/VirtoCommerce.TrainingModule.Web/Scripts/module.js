// Call this to register your module to main application
var moduleName = 'trainingModule';

if (AppDependencies !== undefined) {
    AppDependencies.push(moduleName);
}

angular.module(moduleName, [])
    .config(['$stateProvider', '$urlRouterProvider',
        function ($stateProvider, $urlRouterProvider) {
            $stateProvider
                .state('workspace.trainingModuleState', {
                    url: '/trainingModule',
                    templateUrl: '$(Platform)/Scripts/common/templates/home.tpl.html',
                    controller: [
                        '$scope', 'platformWebApp.bladeNavigationService', function ($scope, bladeNavigationService) {
                            var newBlade = {
                                id: 'blade1',
                                controller: 'trainingModule.helloWorldController',
                                template: 'Modules/$(VirtoCommerce.TrainingModule)/Scripts/blades/hello-world.html',
                                isClosingDisabled: true
                            };
                            bladeNavigationService.showBlade(newBlade);
                        }
                    ]
                });
        }
    ])
    .run(['platformWebApp.mainMenuService', 'platformWebApp.widgetService', '$state',
        function (mainMenuService, widgetService, $state) {
            //Register module in main menu
            var menuItem = {
                path: 'browse/trainingModule',
                icon: 'fa fa-cube',
                title: 'trainingModule',
                priority: 100,
                action: function () { $state.go('workspace.trainingModuleState'); },
                permission: 'trainingModule:access'
            };
            mainMenuService.addMenuItem(menuItem);
        }
    ]);
