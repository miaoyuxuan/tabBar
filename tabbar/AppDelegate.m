//
//  AppDelegate.m
//  tabbar
//
//  Created by gagakj on 2019/4/29.
//  Copyright © 2019 gagakj. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    // 设置tabbar颜色为橙色
    UITabBar.appearance.tintColor = [UIColor orangeColor];
    
    return YES;
}


@end
