do ->
  module.exports = (options)->
#    url = "fb://webview/?url=https://www.facebook.com/dialog/feed?"
    url = "https://www.facebook.com/dialog/feed?"
    query = []
    if options.app_id
      query.push('app_id=' + encodeURIComponent(options.app_id))
    if options.display
      query.push('display=' + encodeURIComponent(options.display))
    if options.name
      query.push('name=' + encodeURIComponent(options.name))
    if options.caption
      query.push('caption=' + encodeURIComponent(options.caption))
    if options.description || options.text
      query.push('description=' + encodeURIComponent(options.description || options.text))
    if options.link || options.url || options.href
      query.push('link=' + encodeURIComponent(options.link || options.url || options.href))
    if options.redirect_uri
      query.push('redirect_uri=' + encodeURIComponent(options.redirect_uri))
    if options.picture || options.image
      query.push('picture=' + encodeURIComponent(options.picture || options.image))
    if options.source
      query.push('source=' + encodeURIComponent(options.source))

    href = url + query.join('&')
    return href
