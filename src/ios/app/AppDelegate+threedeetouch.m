#import "AppDelegate+threedeetouch.h"
#import "ThreeDeeTouch.h"
#import <objc/runtime.h>

@implementation AppDelegate (threedeetouch)

- (void)application:(UIApplication *)application performActionForShortcutItem:(UIApplicationShortcutItem *)shortcutItem completionHandler:(void(^)(BOOL succeeded))completionHandler {
    
    NSDictionary* message = @{
        @"type": shortcutItem.type,
        @"title": shortcutItem.localizedTitle,
        @"subtitle": shortcutItem.localizedSubtitle ?: @""
    };
    ThreeDeeTouch *threeDeeTouch = [self.viewController getCommandInstance:@"ThreeDeeTouch"];
    if (threeDeeTouch != nil) {
        // Plugin already instantiated (app was running) — deliver via callback directly.
        [threeDeeTouch shortcutReceived:message];
    } else {
        // Plugin not yet instantiated (cold launch, JS not ready) — store in the
        // file-scope static so getLaunchShortcut: can retrieve it once JS calls it.
        [ThreeDeeTouch storeLaunchShortcut:message];
    }
    completionHandler(YES);
}

@end
