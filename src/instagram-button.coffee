do ->
  module.exports = (element, options) ->
    element = require('./_element')(element)
    unless options
      options =
        camera: element.getAttribute('camera') || element.getAttribute('data-camera')
        library: element.getAttribute('library') || element.getAttribute('data-library')
        tag: element.getAttribute('tag') || element.getAttribute('data-tag')
        media: element.getAttribute('media') || element.getAttribute('data-media')
        location: element.getAttribute('location') || element.getAttribute('data-location')
        user: element.getAttribute('user') || element.getAttribute('data-user')

    url = "https://www.instagram.com/explore/tags/" + (options.tag || "")
    ua = require('./ua')
    if ua.ios || ua.android
      scheme = require('./instagram-urlscheme')(options)
      element.setAttribute("href", scheme)
      element.setAttribute("target", "_blank")
      element.onclick = ()->
        win = window.open(scheme, 'instagram', 'width=600,height=460')
        win.location.href = url
        return false
    else
      element.setAttribute("href", url)
      element.setAttribute("target", "_blank")
