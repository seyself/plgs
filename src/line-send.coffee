do ->
  module.exports = (options) ->
    url = require('./line-url')
    window.open(url(options), 'line-send', 'width=600,height=460')

