$ ->
  $longs = $('.long')
  waitTime = 1000
  viewWindow = new ViewWindow(window)
  enterView = _.throttle ->
    $(e).trigger('enterview') for e in $longs when viewWindow.viewable(e)
  , waitTime

  $longs.each ->
    $(@).on 'enterview', _.once ->
      $(@).animate(opacity: 0, -> $(@).hide())

  _.delay enterView, 1000

  $(window).on 'scroll', enterView
