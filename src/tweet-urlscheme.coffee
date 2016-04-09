do ->
  module.exports = (options) ->
    url = "twitter://"

    #検索を開く
    if options.search
      return url + 'search?query=' + encodeURIComponent(options.search)
    
    #指定した投稿を開く
    else if options.status
      return url + 'status?id=' + encodeURIComponent(options.status)
    
    #スクリーンネームで指定したユーザーの画面を開く
    else if options.user
      return url + 'user?screen_name=' + encodeURIComponent(options.user)
    
    #IDで指定したユーザーの画面を開く
    else if options.user_id
      return url + 'user?id=' + encodeURIComponent(options.user)
    
    #投稿画面を開く
    else
      message = []
      if options.url
        message.push(options.url)
      if options.hashtags
        message.push('#' + options.hashtags.split(',').join(' #'))
      if options.text
        message.push(options.text)
      if options.via
        message.push('@' + options.via)

      if message.length > 0
        return url + 'post?message=' + encodeURIComponent(message.join(' '))

    #アプリを起動する
    return url
