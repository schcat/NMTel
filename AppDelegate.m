//
//  AppDelegate.m
//  0526NMTel
//
//  Created by Zhixue Li on 5/26/15.
//  Copyright (c) 2015 Zhixue Li. All rights reserved.
//

#import "AppDelegate.h"
#import "BNRItemsViewController.h"
#import "BNRItemsViewController2.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    
    //a.初始化一个tabBar控制器
    UITabBarController *tb=[[UITabBarController alloc]init];
    //设置控制器为Window的根控制器
    self.window.rootViewController = tb;
    
    BNRItemsViewController *c1 = [[BNRItemsViewController alloc] init];
    self.navController1 = [[UINavigationController alloc]
                                             initWithRootViewController:c1];
    _navController1.tabBarItem.title = @"苏州";
    _navController1.tabBarItem.image=[UIImage imageNamed:@"Hypno"];
    
    BNRItemsViewController2 *c2 = [[BNRItemsViewController2 alloc]init];
    
    self.navController2 = [[UINavigationController alloc]
                                             initWithRootViewController:c2];
    _navController2.tabBarItem.title = @"上海";
    _navController2.tabBarItem.image=[UIImage imageNamed:@"Hypno"];
    
    tb.viewControllers = @[self.navController1, self.navController2];
    
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
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
