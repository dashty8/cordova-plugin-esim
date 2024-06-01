import Foundation
import CoreTelephony

@objc(EsimProvisioning) class EsimProvisioning: CDVPlugin {
    @objc(addPlan:)
    func addPlan(command: CDVInvokedUrlCommand) {
        guard let iccid = command.arguments[0] as? String,
              let activationCode = command.arguments[1] as? String,
              let smdpAddress = command.arguments[2] as? String else {
            let pluginResult = CDVPluginResult(status: CDVCommandStatus_ERROR, messageAs: "Invalid arguments")
            self.commandDelegate.send(pluginResult, callbackId: command.callbackId)
            return
        }

        let esimInfo = CTCellularPlanProvisioningRequest()
        esimInfo.address = smdpAddress
        esimInfo.activationCode = activationCode
        esimInfo.iccid = iccid

        let cellularPlanProvisioning = CTCellularPlanProvisioning()

        cellularPlanProvisioning.add(esimInfo) { (result) in
            var pluginResult = CDVPluginResult()
            if result == .success {
                pluginResult = CDVPluginResult(status: CDVCommandStatus_OK, messageAs: "eSIM provisioned successfully")
            } else {
                pluginResult = CDVPluginResult(status: CDVCommandStatus_ERROR, messageAs: "eSIM provisioning failed")
            }
            self.commandDelegate.send(pluginResult, callbackId: command.callbackId)
        }
    }
}
