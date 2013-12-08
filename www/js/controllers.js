(function() {
  'use strict';
  var apiUrl, bookieControllers, bookieUrl;

  bookieUrl = "https://bmark.us";

  apiUrl = "" + bookieUrl + "/api/v1";

  bookieControllers = angular.module('bookieControllers', []);

  bookieControllers.controller('MainController', [
    '$scope', '$rootScope', '$window', '$location', function($scope, $rootScope, $window, $location) {
      return $rootScope.go = function(hash_id) {
        var ref;
        ref = window.open("" + bookieUrl + "/redirect/" + hash_id, "_blank", "location=yes");
      };
    }
  ]);

  bookieControllers.controller('BmarkListController', [
    '$scope', '$http', function($scope, $http) {
      return $http.get("" + apiUrl + "/bmarks", {
        cache: true
      }).success(function(data) {
        var bmark, i, _i, _len, _ref, _results;
        $scope.bookmarks = data.bmarks;
        _ref = data.bmarks;
        _results = [];
        for (i = _i = 0, _len = _ref.length; _i < _len; i = ++_i) {
          bmark = _ref[i];
          _results.push((function(bmark, i) {
            var parser;
            parser = document.createElement('a');
            parser.href = bmark.url;
            return data.bmarks[i].hostname = parser.hostname.replace('www.', '');
          })(bmark, i));
        }
        return _results;
      });
    }
  ]);

}).call(this);
