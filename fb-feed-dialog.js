// Generated by CoffeeScript 1.9.3
(function() {
  return module.exports = function(options) {
    var url;
    url = require('./fb-feed-url')(options);
    return window.open(url, 'fb-dialog', 'width=600,height=460');
  };
})();