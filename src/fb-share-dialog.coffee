do ->
  module.exports = (options) ->
    url = require('./fb-share-url')
    window.open(url(options), 'fb-dialog', 'width=600,height=460')

