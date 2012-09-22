var ViewWindow = (function() {
  function ViewWindow(window) {
    this.window = window;
  }

  ViewWindow.prototype.viewable = function(element) {
    return this.viewableHorizonally(element) && this.viewableVertically(element);
  };

  ViewWindow.prototype.viewableHorizonally = function(element) {
    return this.viewableLeftEdge(element) && this.viewableRightEdge(element);
  };

  ViewWindow.prototype.viewableLeftEdge = function(element) {
    return (this.window.scrollX + this.window.innerWidth) >= element.offsetLeft;
  };

  ViewWindow.prototype.viewableRightEdge = function(element) {
    return this.window.scrollX <= (element.clientWidth + element.offsetLeft);
  };

  ViewWindow.prototype.viewableVertically = function(element) {
    return this.viewableTopEdge(element) && this.viewableBottomEdge(element);
  };

  ViewWindow.prototype.viewableTopEdge = function(element) {
    return (this.window.scrollY + this.window.innerHeight) >= element.offsetTop;
  };

  ViewWindow.prototype.viewableBottomEdge = function(element) {
    return this.window.scrollY <= (element.clientHeight + element.offsetTop);
  };

  return ViewWindow;
})();
