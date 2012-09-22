class ViewWindow
  constructor: (window) ->
    @window = window

  viewable: (element) ->
    @viewableHorizonally(element) && @viewableVertically(element)

  viewableHorizonally: (element) ->
    @viewableLeftEdge(element) && @viewableRightEdge(element)

  viewableLeftEdge: (element) ->
    (@window.scrollX + @window.innerWidth) >= element.offsetLeft

  viewableRightEdge: (element) ->
    @window.scrollX <= (element.clientWidth + element.offsetLeft)

  viewableVertically: (element) ->
    @viewableTopEdge(element) && @viewableBottomEdge(element)

  viewableTopEdge: (element) ->
    (@window.scrollY + @window.innerHeight) >= element.offsetTop

  viewableBottomEdge: (element) ->
    @window.scrollY <= (element.clientHeight + element.offsetTop)
