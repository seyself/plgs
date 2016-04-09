module.exports = (target) ->
  if typeof(target) == 'string'
    return document.getElementById(target) || document.querySelector(target)
  return target
