do ->
  module.exports = (options)->
    url = "http://line.me/R/msg/text/"
    url += options.text
    return url
