//
//  Tools.m
//  Object-c-Test
//
//  Created by Apple on 15/12/13.
//  Copyright © 2015年 Apple. All rights reserved.
//

#import "Tools.h"

@implementation Tools

// 一般都以share或default方法开头的方法，都是创建单例的方法
+(instancetype)shareInstance{
    Tools *instance = [[self alloc] init];
    return instance;
}

static Tools *_instance = nil;// 定义一个全局的静态变量

//对象创建的时候，调用alloc方法的时候，就会调用allocWithZone方法
//所以我们只需要在该方法中控制对象只被创建一次即可实现单例
+(instancetype)allocWithZone:(struct _NSZone *)zone{
    /*
    // 以下代码在多线程中，可能会出现问题
    // 单线程就采用以下的写法
//    NSLog(@"%s",__func__);
//    // 由于所有的创建方法都会调用该方法，所以只需要在该方法中控制当前对象只创建一次即可
//    if (_instance == nil) {
//        NSLog(@"创建一个对象");
//        _instance = [[super allocWithZone:zone] init];
//    }
//    return _instance;
     */


    // 以下代码在多线程中也能保证只执行一次
    // 多线程就采用以下的写法
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _instance = [[super allocWithZone:zone] init];
    });
    return _instance;
}

//copyWithZone方法被调用，说明对象已经创建成功了，既然对象已经有了，说明_instance也就有值了。
- (id)copyWithZone:(nullable NSZone *)zone{
//    Tools *t = [[[self class] allocWithZone:zone] init];
//    return t;
    // 改成：
    return _instance;
}

- (id)mutableCopyWithZone:(nullable NSZone *)zone{
//    Tools *t = [[[self class] allocWithZone:zone] init];
//    return t;
    // 改成：
    return _instance;
}

@end
