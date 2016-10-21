//
//  AppDelegate.m
//  testApp
//
//  Created by hqmac2 on 2016/10/20.
//  Copyright © 2016年 Mingor. All rights reserved.
//

#import "AppDelegate.h"
#import "HomeViewController.h"
#import "DetailViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window.rootViewController = [[UINavigationController alloc] initWithRootViewController:[HomeViewController new]];
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    return YES;
}

- (BOOL)application:(UIApplication *)app openURL:(NSURL *)url options:(NSDictionary<UIApplicationOpenURLOptionsKey,id> *)options {
    
    /* testapp://testHost.cn/test.html?missionId=123 */
    
    // 从Safari/APP打开i志愿
    if ([url.scheme isEqualToString:@"testapp"]) {
        // 进入详情页
        if ([url.host isEqualToString:@"testHost.cn"]) {
            if ([url.query hasPrefix:@"missionId="]) {
                NSString *missionId = [[url query] substringFromIndex:[[url query] rangeOfString:@"missionId="].location + 10];
                
                DetailViewController *detailVC = [DetailViewController new];
                detailVC.missionId = missionId;
                
                UINavigationController *nav = (UINavigationController *)self.window.rootViewController;
                [nav pushViewController:detailVC animated:YES];
            }
        }
        return YES;
    }
    return NO;
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
