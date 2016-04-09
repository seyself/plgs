do ->
  module.exports = (options) ->
    url = require('./fb-feed-url')(options)
    window.open(url, 'fb-dialog', 'width=600,height=460')

