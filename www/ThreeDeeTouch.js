var exec = require("cordova/exec");

var ThreeDeeTouch = function () {
};

ThreeDeeTouch.prototype.isAvailable = function (onSuccess) {
  exec(onSuccess, null, "ThreeDeeTouch", "isAvailable", []);
};

ThreeDeeTouch.prototype.watchForceTouches = function (onSuccess) {
  exec(onSuccess, null, "ThreeDeeTouch", "watchForceTouches", []);
};

ThreeDeeTouch.prototype.enableLinkPreview = function (onSuccess) {
  exec(onSuccess, null, "ThreeDeeTouch", "enableLinkPreview", []);
};

ThreeDeeTouch.prototype.disableLinkPreview = function (onSuccess) {
  exec(onSuccess, null, "ThreeDeeTouch", "disableLinkPreview", []);
};

ThreeDeeTouch.prototype.configureQuickActions = function (icons, onSuccess, onError) {
  exec(onSuccess, onError, "ThreeDeeTouch", "configureQuickActions", [icons]);
};

ThreeDeeTouch.prototype.registerCallback = function(cb, onError) {
  exec(cb, onError, "ThreeDeeTouch", "registerCallback");
};

module.exports = new ThreeDeeTouch();