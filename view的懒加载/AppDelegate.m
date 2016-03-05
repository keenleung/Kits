//
//  AppDelegate.m
//  view的懒加载
//
//  Created by Apple on 16/2/19.
//  Copyright © 2016年 Apple. All rights reserved.
//

#import "AppDelegate.h"
#import "KLViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {

    // 1.创建窗口
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    self.window.backgroundColor = [UIColor greenColor];

    // 添加多一个按钮
    // 如果把所有的颜色都去掉,发现按钮还是不能点击,因为按钮的上面还有一层
    UIButton *button = [UIButton buttonWithType:UIButtonTypeContactAdd];
    [self.window addSubview:button];
    button.frame = CGRectMake(50, 50, 50, 50);

    // 2.设置窗口的根控制器
    KLViewController *vc = [[KLViewController alloc] init];

    // 默认创建空白的View的颜色是透明的.即:vc.view.backgroundColor = [UIColor clearColor];
    // 但 view 本身不可以用透明来描述的
    // 这里用到了 view 的懒加载,即会调用 loadView 方法,然后再调用 viewDidLoad
    vc.view.backgroundColor = [UIColor yellowColor];

    self.window.rootViewController = vc;

    // 3.显示窗口
    [self.window makeKeyAndVisible];

    // 设置控制器的 view 透明,发现按钮可以点击
//    vc.view.alpha = 0;

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
