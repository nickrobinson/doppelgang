if (window.location.href.indexOf('#_=_') > 0) {
  window.location = window.location.href.replace(/#.*/, '');
}
