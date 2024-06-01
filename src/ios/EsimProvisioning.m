#import <Cordova/CDV.h>

@interface ESIMProvisioning : CDVPlugin

- (void)addPlan:(CDVInvokedUrlCommand*)command;

@end

@implementation ESIMProvisioning

- (void)addPlan:(CDVInvokedUrlCommand*)command {
    CDVPluginResult* pluginResult = nil;
    NSString* arg0 = [command.arguments objectAtIndex:0];

    if (arg0 != nil && [arg0 length] > 0) {
        pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:arg0];
    } else {
        pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR messageAsString:@"Expected one non-empty string argument."];
    }

    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}

@end
