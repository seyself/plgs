do ->
  u = window.navigator.userAgent.toLowerCase()
  _ua = 
    ios: u.indexOf("iphone") != -1 || u.indexOf("ipod") != -1 || u.indexOf("ipad") != -1
    android: (u.indexOf("android") != -1 && u.indexOf("mobile") != -1)
    mobile: (u.indexOf("windows") != -1 && u.indexOf("phone") != -1) || u.indexOf("iphone") != -1 || u.indexOf("ipod") != -1 || (u.indexOf("android") != -1 && u.indexOf("mobile") != -1) || (u.indexOf("firefox") != -1 && u.indexOf("mobile") != -1) || u.indexOf("blackberry") != -1
    tablet: (u.indexOf("windows") != -1 && u.indexOf("touch") != -1 && u.indexOf("tablet pc") == -1) || u.indexOf("ipad") != -1 || (u.indexOf("android") != -1 && u.indexOf("mobile") == -1) || (u.indexOf("firefox") != -1 && u.indexOf("tablet") != -1) || u.indexOf("kindle") != -1 || u.indexOf("silk") != -1 || u.indexOf("playbook") != -1
  _ua.pc = !_ua.mobile && !_ua.tablet
  module.exports = _ua
