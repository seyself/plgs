do ->
  module.exports = (element, options) ->
    element = require('./_element')(element)
    unless options
      options = 
        url: element.getAttribute('url') || element.getAttribute('data-url')
        hashtags: element.getAttribute('hashtags') || element.getAttribute('data-hashtags')
        text: element.getAttribute('text') || element.getAttribute('data-text')
        via: element.getAttribute('via') || element.getAttribute('data-via')

    element.setAttribute("href", (require('./tweet-url'))(options))
    element.setAttribute("target", "_blank")
    element.onclick = ()->
      require('./tweet-dialog')(options)
      return false
