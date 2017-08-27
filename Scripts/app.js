(function () {
    'use strict';

    angular.module('my1stApp', [])
        .controller('my1stController', function ($scope) {
            $scope.name = "Kam";
            $scope.sayHello = function () {
                return "Hello World";
            };
        });

    angular.module('namecalculator', [])
        .controller('nccontroller', function ($scope) {
            $scope.name = "";
            $scope.totalvalue = 0;
            $scope.displaynumber = function () {
                var totalnamevalue = calculateNumericForString($scope.name);
                $scope.totalvalue = totalnamevalue;
            };
            function calculateNumericForString(string) {
                var totalStringValue = 0;
                for (var i = 0; i < string.length; i++) {
                    totalStringValue += string.charCodeAt(i);
                }
                return totalStringValue;
            };

        });

    angular.module('msgApp', [])
        .controller('msgcontroller', msgcontroller);
        msgcontroller.$inject = ['$scope','$filter'];
            function msgcontroller($scope,$filter) {
                $scope.name = "David";
                $scope.stateOfBeing = "hungry";
                $scope.cookieCost = .45;
                $scope.saymsg = function () {
                    var msg = "Kam eats ice-cream.";
                    var output = $filter('uppercase')(msg);
                    return output;
                };
                $scope.feedme = function () {
                    $scope.stateOfBeing = "fed";
                };
            };


            angular.module('LunchCheck', [])
                .controller('LCController', LCController);
            LCController.$inject = ['$scope'];
            function LCController($scope) {              
                $scope.msg = "";
                $scope.displaymsg = function () {
                    var result = document.getElementById("lunch-menu").value;
                    var splitresult = result.split(",", 3);
                    if (result == "") {
                        $scope.msg = "Please enter data first!";  
                    } else if (result == splitresult) {
                            $scope.msg = "Enjoy!";
                            } else {
                                $scope.msg = "Too much!";
                                    };

                    return $scope.msg;
                };
            };


            


})();