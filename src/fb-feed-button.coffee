do ->
  module.exports = (element, options) ->
    element = require('./_element')(element)
    unless options
      options = 
        app_id: element.getAttribute('app_id') || element.getAttribute('data-app_id')
        display: element.getAttribute('display') || element.getAttribute('data-display')
        name: element.getAttribute('name') || element.getAttribute('data-name')
        caption: element.getAttribute('caption') || element.getAttribute('data-caption')
        description: element.getAttribute('description') || element.getAttribute('data-description') || element.getAttribute('text') || element.getAttribute('data-text')
        link: element.getAttribute('link') || element.getAttribute('data-link') || element.getAttribute('url') || element.getAttribute('data-url') || element.getAttribute('href') || element.getAttribute('data-href')
        redirect_uri: element.getAttribute('redirect_uri') || element.getAttribute('data-redirect_uri')
        picture: element.getAttribute('picture') || element.getAttribute('data-picture') || element.getAttribute('image') || element.getAttribute('data-image')
        source: element.getAttribute('source') || element.getAttribute('data-source')

    element.setAttribute("href", (require('./fb-feed-url'))(options))
    element.setAttribute("target", "_blank")
    element.addEventListener 'click', ()->
      require('./fb-feed-dialog')(options)
      return false
    element.addEventListener 'touchend', ()->
      require('./fb-feed-dialog')(options)
      return false
