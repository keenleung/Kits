//
//  Tools.h
//  Object-c-Test
//
//  Created by Apple on 15/12/13.
//  Copyright © 2015年 Apple. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Tools : NSObject<NSCopying, NSMutableCopying>

// 1.一般情况下，创建一个单例对象都有一个与之对应的类方法
// 2.一般情况下，创建单例对象的方法名称都以share开头，或以default开头
+(instancetype)shareInstance;

@end
