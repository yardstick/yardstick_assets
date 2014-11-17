(function() {
    var ysUtils = angular.module('ysUtils', []);

    ysUtils.factory('PromiseUtils', function() {
        return {
            unwrap: function PromiseUtils_unwrap(promise) {
                if((promise != null) && (promise.then != null)) {
                    if(!('$$unwrapped' in promise)) {
                        promise['$$unwrapped'] = void 0;
                        promise.then(function(response) {
                            return promise['$$unwrapped'] = response;
                        });
                    }
                }
                return promise['$$unwrapped'];
            },
            wrap: function PromiseUtils_wrap(promise) {
                promise.then(function(response) {
                    promise['$$value'] = response;
                    return response;
                });
                return promise;
            }
        }
    });

    ysUtils.filter('promised', [
        'PromiseUtils', function(PromiseUtils) {
            return function(promise) {
                return PromiseUtils.unwrap(promise);
            };
        }
    ]);
})();
