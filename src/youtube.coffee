###
# 
# @options
# - vid - ビデオID
# - autoPlay - 自動で再生を開始
# - onReady - 準備完了時
# - onPlaying - 再生開始時
# - onEnded - 再生が終わった時
# - onPaused - 再生を停止した時
# - onBuffering - buffering
# - onCued - cued
# 
###
do ->
  module.exports = (target, options) ->
    tag = document.createElement('script')
    tag.src = "https://www.youtube.com/player_api"
    firstScriptTag = document.getElementsByTagName('script')[0]
    firstScriptTag.parentNode.insertBefore(tag, firstScriptTag)

    target = require('./_element')(target)
    player = null
    params = 
      videoId: (options.id || options.vid || options.videoId || options.video_id || options.videoid)
      width: '640'
      height: '390'
      events: 
        onReady: (event)->
          options.onReady?(event)
          if options.autoPlay
            event.target.playVideo()
        onStateChange: (event)->
          options.onStateChange?(event)
          if event.data == YT.PlayerState.PLAYING
            options.onPlaying?(event)
          else if event.data == YT.PlayerState.ENDED
            options.onEnded?(event)
          else if event.data == YT.PlayerState.PAUSED
            options.onPaused?(event)
          else if event.data == YT.PlayerState.BUFFERING
            options.onBuffering?(event)
          else if event.data == YT.PlayerState.CUED
            options.onCued?(event)

    for key, value of options
      params[key] = value

    window.onYouTubePlayerAPIReady = () ->
      player = new YT.Player(target, params)
    
    return {
      getPlayer: ()->
        return player
    }

