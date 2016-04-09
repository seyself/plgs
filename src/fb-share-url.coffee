do ->
  module.exports = (options)->
#    url = "fb://webview/?url=https://www.facebook.com/dialog/share?"
    url = "https://www.facebook.com/dialog/share?"
    query = []
    if options.app_id
      query.push('app_id=' + encodeURIComponent(options.app_id))
    if options.display
      query.push('display=' + encodeURIComponent(options.display))
    if options.href || options.url || options.link
      query.push('href=' + encodeURIComponent(options.href || options.url || options.link))
    if options.redirect_uri
      query.push('redirect_uri=' + encodeURIComponent(options.redirect_uri))
    

    href = url + query.join('&')
    return href
