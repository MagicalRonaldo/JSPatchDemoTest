//
//  AppDelegate.m
//  TableView
//
//  Created by xubing on 14-6-5.
//  Copyright (c) 2014年 xubing. All rights reserved.
//

#import "AppDelegate.h"
#import "BaseNavigationController.h"
#import "JPEngine.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor whiteColor];
    HomeViewController *lanchController = [[HomeViewController alloc]init];
    BaseNavigationController *navController = [[BaseNavigationController alloc] initWithRootViewController:lanchController];
    self.window.rootViewController = navController;
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    
}

@end
