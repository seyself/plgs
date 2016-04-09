do ->
  module.exports = (element, options) ->
    element = require('./_element')(element)
    unless options
      options = 
        app_id: element.getAttribute('app_id') || element.getAttribute('data-app_id')
        display: element.getAttribute('display') || element.getAttribute('data-display')
        href: element.getAttribute('href') || element.getAttribute('data-href') || element.getAttribute('link') || element.getAttribute('data-link') || element.getAttribute('url') || element.getAttribute('data-url')
        redirect_uri: element.getAttribute('redirect_uri') || element.getAttribute('data-redirect_uri')
        
    element.setAttribute("href", (require('./fb-share-url'))(options))
    element.setAttribute("target", "_blank")
    element.onclick = ()->
      require('./fb-share-dialog')(options)
      return false
