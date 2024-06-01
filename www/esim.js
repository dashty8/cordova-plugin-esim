var exec = require('cordova/exec');

var ESIMProvisioning = {
    addPlan: function(arg0, success, error) {
        exec(success, error, 'ESIMProvisioning', 'addPlan', [arg0]);
    }
};

module.exports = ESIMProvisioning;
