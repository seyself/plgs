do ->
  module.exports = (options) ->
    url = "instagram://"

    #検索を開く
    if options.camera
      return url + 'camera'

    #検索を開く
    else if options.library
      return url + 'library?AssetPath=C%3A%5Cfakepath%5Cimage.jpeg&amp;InstagramCaption='

    #検索を開く
    else if options.tag
      return url + 'tag?name=' + encodeURIComponent(options.tag)

    #検索を開く
    else if options.media
      return url + 'media?id=' + encodeURIComponent(options.media)

    #検索を開く
    else if options.location
      return url + 'location?id=' + encodeURIComponent(options.location)

    #検索を開く
    else if options.user
      return url + 'user?username=' + encodeURIComponent(options.user)

    else
      return url + 'library?AssetPath=C%3A%5Cfakepath%5Cimage.jpeg&amp;InstagramCaption='

    #アプリを起動する
    return url
