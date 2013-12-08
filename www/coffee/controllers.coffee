'use strict'

bookieUrl = "https://bmark.us"
apiUrl = "#{bookieUrl}/api/v1"

bookieControllers = angular.module 'bookieControllers', []

bookieControllers.controller 'MainController', [
  '$scope', '$rootScope', '$window', '$location',
  ($scope, $rootScope, $window, $location) ->
    ## when a bookmark is clicked
    $rootScope.go = (hash_id) ->
      ref = window.open(
        "#{bookieUrl}/redirect/#{hash_id}"
        "_blank"
        "location=yes"
      )
      return
]

bookieControllers.controller 'BmarkListController', [
  '$scope', '$http',
  ($scope, $http) ->
    $http.get("#{apiUrl}/bmarks", {
      cache: true
    })
    .success (data) ->
      $scope.bookmarks = data.bmarks
      ## get just the hostname for the bmark
      for bmark, i in data.bmarks
        do (bmark, i) ->
          parser = document.createElement('a')
          parser.href = bmark.url
          data.bmarks[i].hostname = parser.hostname.replace('www.', '')
]
