var exec = require('cordova/exec');

var EsimProvisioning = {
    addPlan: function(successCallback, errorCallback) {
        exec(successCallback, errorCallback, "EsimProvisioning", "addPlan", []);
    }
};

module.exports = EsimProvisioning;
