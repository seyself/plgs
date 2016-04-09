do ->
  module.exports = (options) ->
    url = "https://twitter.com/intent/tweet?"
    query = []
    if options.url
      query.push('url=' + encodeURIComponent(options.url))
    if options.hashtags
      query.push('hashtags=' + encodeURIComponent(options.hashtags))
    if options.text
      query.push('text=' + encodeURIComponent(options.text))
    if options.via
      query.push('via=' + encodeURIComponent(options.via))
    href = url + query.join('&')
    return href
