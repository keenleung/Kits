//
//  main.m
//  ios的启动过程
//
//  Created by Apple on 16/2/18.
//  Copyright © 2016年 Apple. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"

int main(int argc, char * argv[]) {
    @autoreleasepool {
        // 第三个参数,应用程序对象的名称,它必须得是UIApplication或者是UIApplication它的子类,直接设置为nil,默认就是UIApplication
        // 第四个参数:设置UIApplication代理的名称.
        // NSStringFromClass:把类名转成字符串.

        return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
    }

    // 1.执行main
    // 2.执行UIApplicationMain,创建UIApplication对象,并设置它的代理AppDelegate
    // 3.开启一个事件循环(死循环:保证应用程序不退出),主运行循环.
    // 4.加载info.plist文件.加载配置信息.
    // 5.判断Main storyboard file base name里面有没有指定Main,如果指定了Main,那么它就会自动加载指定的StoryBoard.
    // 6.通知应用程序,调用代理方法.


}