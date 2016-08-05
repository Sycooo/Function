//
//  AppDelegate.m
//  Func
//
//  Created by yiming li on 16/8/4.
//  Copyright © 2016年 puxbao. All rights reserved.
//

#import "AppDelegate.h"
#import <BaiduMapAPI_Map/BMKMapComponent.h>


@interface AppDelegate ()
{
    
}
@end

@implementation AppDelegate

#warning 检测屏幕触摸事件
/*
 1.修改AppDelegate   不再继承于UIResponder  而是继承于 UIApplication
 2.修改man.m中的UIApplicationMain()参数
 3.在AppDelegate重写父类UIApplication的 - (void)sendEvent:(UIEvent *)event 方法
 */
- (void)sendEvent:(UIEvent *)event
{
    [super sendEvent:event];
    
    NSSet *allTouches = [event allTouches];
    
    if ([allTouches count] > 0) {
        
        UITouchPhase phase = ((UITouch *)[allTouches anyObject]).phase;
        if (phase == UITouchPhaseBegan) {
            
            NSLog(@"touch began");
        }else if (phase == UITouchPhaseEnded) {
            
            NSLog(@"touch end");
        }
        
    }
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
