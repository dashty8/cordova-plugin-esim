#import "EsimProvisioning.h"
#import <CoreTelephony/CTCellularPlanProvisioning.h>
#import <CoreTelephony/CTCellularPlanProvisioningRequest.h>

@implementation EsimProvisioning

- (void)addPlan:(CDVInvokedUrlCommand*)command {
    NSString* iccid = [command.arguments objectAtIndex:0];
    NSString* activationCode = [command.arguments objectAtIndex:1];
    NSString* smdpAddress = [command.arguments objectAtIndex:2];

    if (iccid == nil || activationCode == nil || smdpAddress == nil) {
        CDVPluginResult* pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR messageAsString:@"Invalid arguments"];
        [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
        return;
    }

    CTCellularPlanProvisioningRequest* esimInfo = [[CTCellularPlanProvisioningRequest alloc] init];
    [esimInfo setAddress:smdpAddress];
    [esimInfo setActivationCode:activationCode];
    [esimInfo setIccid:iccid];

    CTCellularPlanProvisioning* cellularPlanProvisioning = [[CTCellularPlanProvisioning alloc] init];
    
    [cellularPlanProvisioning addPlanWith:esimInfo completionHandler:^(CTCellularPlanProvisioningAddPlanResult result) {
        CDVPluginResult* pluginResult;
        if (result == CTCellularPlanProvisioningAddPlanResultSuccess) {
            pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:@"eSIM provisioned successfully"];
        } else {
            pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR messageAsString:@"eSIM provisioning failed"];
        }
        [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
    }];
}

@end
