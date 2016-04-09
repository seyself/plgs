do ->
  module.exports = (element, options) ->
    element = require('./_element')(element)

    element.setAttribute("href", (require('./line-url'))(options))
    element.setAttribute("target", "_blank")
    element.onclick = ()->
      require('./line-send')(options)
      return false