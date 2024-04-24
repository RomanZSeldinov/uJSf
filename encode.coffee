utf8_to_b64 = (str) ->
  window.btoa unescape(encodeURIComponent(str))

b64_to_utf8 = (str) ->
  decodeURIComponent escape(window.atob(str))
