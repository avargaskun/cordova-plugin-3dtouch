#import "AppDelegate+threedeetouch.h"
#import "ThreeDeeTouch.h"
#import <objc/runtime.h>

@implementation AppDelegate (threedeetouch)

- (void)application:(UIApplication *)application performActionForShortcutItem:(UIApplicationShortcutItem *)shortcutItem completionHandler:(void(^)(BOOL succeeded))completionHandler {
    
    NSDictionary* message = @{
        @"type": shortcutItem.type,
        @"title": shortcutItem.localizedTitle,
        @"subtitle": shortcutItem.localizedSubtitle
    };
    ThreeDeeTouch *threeDeeTouch = [self.viewController getCommandInstance:@"ThreeDeeTouch"];
    [threeDeeTouch shortcutReceived:message];
    completionHandler(YES);
}

@end
