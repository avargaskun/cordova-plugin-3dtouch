#import <Cordova/CDVPlugin.h>

@interface ThreeDeeTouch : CDVPlugin

- (void) isAvailable:(CDVInvokedUrlCommand*)command;
- (void) watchForceTouches:(CDVInvokedUrlCommand*)command;
- (void) configureQuickActions:(CDVInvokedUrlCommand*)command;
- (void) enableLinkPreview:(CDVInvokedUrlCommand*)command;
- (void) disableLinkPreview:(CDVInvokedUrlCommand*)command;
- (void) registerCallback:(CDVInvokedUrlCommand*)command;
- (void) shortcutReceived:(NSDictionary*)shortcut;

@end

@class ForceTouchRecognizer;
@interface ForceTouchRecognizer : UIGestureRecognizer {
  ForceTouchRecognizer * ForceTouchRecognizer;
}
@property NSString* callbackId;
@property id<CDVCommandDelegate> commandDelegate;
- (void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event;
@end
