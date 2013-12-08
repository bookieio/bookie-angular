(function() {
  'use strict';
  var bookieApp;

  bookieApp = angular.module('bookieApp', ['ngRoute', 'ngTouch', 'bookieControllers']);

  bookieApp.config([
    '$routeProvider', function($routeProvider) {
      $routeProvider.when('/', {
        templateUrl: 'partials/bmark-list.html',
        controller: 'BmarkListController'
      }).otherwise({
        redirectTo: '/'
      });
    }
  ]);

}).call(this);
