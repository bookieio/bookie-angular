'use strict'

bookieApp = angular.module 'bookieApp', [
  'ngRoute'
  'ngTouch'
  'bookieControllers'
]

bookieApp.config ['$routeProvider', ($routeProvider) ->
  $routeProvider
    .when('/', {
      templateUrl: 'partials/bmark-list.html'
      controller: 'BmarkListController'
    })
    .otherwise({
      redirectTo: '/'
    })
    return
]
