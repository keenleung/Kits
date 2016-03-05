//
//  Tools.m
//  Object-c-Test
//
//  Created by Apple on 15/12/13.
//  Copyright © 2015年 Apple. All rights reserved.
//

#import "Tools.h"

@implementation Tools

+(instancetype)shareInstance{
    Tools *instance = [[Tools alloc] init];
    return instance;
}

static  Tools *_instance = nil;
// 调用alloc方法时，会调用allocWithZone方法
// 所以只要控制在这个方法中，只能创建一个唯一的对象，即可实现单例
+(instancetype)allocWithZone:(struct _NSZone *)zone{
    /*
    if (_instance == nil) {
        _instance = [[super allocWithZone:zone] init];
        //不能通过 [[alloc] init]来创建，不然会发生死循环
    }
    return _instance;
     */

    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _instance = [[super allocWithZone:zone] init];
    });
    return _instance;
}

// 实现copy中的方法
- (id)copyWithZone:(nullable NSZone *)zone{
    return _instance;
}

-(id)mutableCopyWithZone:(NSZone *)zone{
    return _instance;
}

// 在MRC下，如果要控制只能有一个对象，则就不能让这个对象释放
-(oneway void)release{
    //这里什么都不做即可，即可保证整个过程中只有一份实例
}

-(instancetype)retain{
    return _instance;
}

-(NSUInteger)retainCount{
    //return 1;

    // 注意：为了方便程序员之间的沟通，一般情况下不会在单例中返回retainCount = 1，而是返回一个比较大的数值
    // 这样做，就知道这个对象就只有一份实例
    return MAXFLOAT;
}

@end
