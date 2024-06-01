var exec = require('cordova/exec');

var EsimProvisioning = {
    addPlan: function(iccid, activationCode, smdpAddress, successCallback, errorCallback) {
        exec(successCallback, errorCallback, "EsimProvisioning", "addPlan", [iccid, activationCode, smdpAddress]);
    }
};

module.exports = EsimProvisioning;
