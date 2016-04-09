do ->
  module.exports = (options) ->
    url = require('./tweet-url')
    window.open(url(options), 'twitter-intent', 'width=600,height=460')
