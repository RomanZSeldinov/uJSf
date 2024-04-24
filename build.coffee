utf8_to_b64 = (str) ->
  window.btoa unescape(encodeURIComponent(str))

b64_to_utf8 = (str) ->
  decodeURIComponent escape(window.atob(str))

setVault =(name, value) ->
  vaultData = b64_to_utf8(getCookie("vault"))
  newVault = "|" + name + "=" + value
  vaultData = vaultData + newVault
  vaultData = utf8_to_b64(vaultData)