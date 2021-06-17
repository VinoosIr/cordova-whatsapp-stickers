/********* WhatsAppSticker.h Cordova Plugin Header *******/

#import <Cordova/CDVPlugin.h>

@interface WhatsAppSticker : CDVPlugin

- (void)addToWhatsApp:(CDVInvokedUrlCommand*)command;

@end

/********* WhatsAppSticker.m Cordova Plugin Implementation *******/

#import <Cordova/CDVPlugin.h>

@implementation WhatsAppSticker

- (void)addToWhatsApp:(CDVInvokedUrlCommand*)command
{

    // Get the JSON containing the Sticker Pack information
    NSString* json = [command.arguments objectAtIndex:0];
    
    // Convert to correct format for copying to Pasteboard
    NSData* jsonData = [json dataUsingEncoding:NSUTF8StringEncoding];

    // Copy JSON information to Pasteboard, which is how Whatsapp reads Sticker Pack information on iOS
    [[UIPasteboard generalPasteboard] setData:jsonData forPasteboardType:@"net.whatsapp.third-party.sticker-pack"];

    UIApplication *application = [UIApplication sharedApplication];

    // The Scheme URL used to send the Sticker Pack information
    NSURL *URL = [NSURL URLWithString:@"whatsapp://stickerPack"];

    // It opens the URL Scheme, and as a result, it opens WhatsApp
    [application openURL:URL options:@{} completionHandler:^(BOOL success) {
        CDVPluginResult* pluginResult = nil;
        if (success) {
            pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:@"Sticker sent."];
        } else {
            pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR messageAsString:@"A problem has occurred, the sticker were not sent."];
        }

        [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
    }];
}

@end
