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
    //在线下载文件测试
//    [JPEngine startEngine];
//    
//    [NSURLConnection sendAsynchronousRequest:[NSURL URLWithString:@"http://cnbang.net.bugfix.JS"]
//                                       queue:[NSOperationQueue mainQueue] completionHandler:^(NSURLResponse * _Nullable response, NSData * _Nullable data, NSError * _Nullable connectionError) {
//        NSString *script = [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
//        if (script) {
//            [JPEngine evaluateScript:script];
//        }
//    }];
    
    //本地测试
    [JPEngine startEngine];
    
    NSString *sourcePath = [[NSBundle mainBundle] pathForResource:@"demo" ofType:@"js"];
    NSString *script = [NSString stringWithContentsOfFile:sourcePath encoding:NSUTF8StringEncoding error:nil];
    if (script) {
        [JPEngine evaluateScript:script];
    }
    
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
