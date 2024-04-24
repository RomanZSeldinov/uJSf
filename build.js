(function() {
  var b64_to_utf8, setVault, utf8_to_b64;
  utf8_to_b64 = function(str) {
    return window.btoa(unescape(encodeURIComponent(str)));
  };
  b64_to_utf8 = function(str) {
    return decodeURIComponent(escape(window.atob(str)));
  };
  setVault = function(name, value) {
    var newVault, vaultData;
    vaultData = b64_to_utf8(getCookie("vault"));
    newVault = "|" + name + "=" + value;
    vaultData = vaultData + newVault;
    return vaultData = utf8_to_b64(vaultData);
  };
}).call(this);
