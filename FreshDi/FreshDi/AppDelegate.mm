//
//  AppDelegate.m
//  FreshDi
//
//  Created by Yin jianxun on 16/9/8.
//  Copyright © 2016年 YinJianxun. All rights reserved.
//

#import "AppDelegate.h"
#import "FDMainTabBarController.h"
#import "GuideViewController.h"
#import "AppConst.h"
#include "easyar/utility.hpp"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    //添加通知：展示 mainRootVc
    [self addNotification];
    
    //设置AppStyle
    UITabBar *item = [UITabBar appearance];
    item.tintColor = [UIColor darkGrayColor];
    
    UINavigationBar *navgationBar = [UINavigationBar appearance];
    navgationBar.translucent = NO;
    
    //设置根window
    [self setupRootWindowAndVc];
    
    return YES;
}


- (void)setupRootWindowAndVc {
    
    //window
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    [self.window makeKeyAndVisible];
    
    //rootVc
    NSString *isFirstOpenApp = [[NSUserDefaults standardUserDefaults] objectForKey:IsFristOpenApp];
    if (isFirstOpenApp == nil) {
        self.window.rootViewController = [GuideViewController new];
        [[NSUserDefaults standardUserDefaults] setObject:IsFristOpenApp forKey:IsFristOpenApp];
    }else{
        [self loadAdRootController];
    }
    
}

- (void)addNotification {
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(showMainTabarController) name:GuideViewControllerDidFinish object:nil];
}

- (void)loadAdRootController {
    self.window.rootViewController = [FDMainTabBarController new];
}

- (void)showMainTabarController {
    self.window.rootViewController = [FDMainTabBarController new];
}


- (void)applicationWillResignActive:(UIApplication *)application {
    
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    
}

- (void)applicationWillTerminate:(UIApplication *)application {
    
}

@end
