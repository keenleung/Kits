//
//  Student.m
//  Object-c-Test
//
//  Created by Apple on 15/12/13.
//  Copyright © 2015年 Apple. All rights reserved.
//

#import "Student.h"

@implementation Student

//重写copy方法
- (id)copyWithZone:(nullable NSZone *)zone{
    // 1.创建副本
    id obj = [super copyWithZone:zone];

    // 2.设置数据给副本
    [obj setHeight:_height];

    // 3.返回副本
    return obj;
}

- (id)mutableCopyWithZone:(nullable NSZone *)zone{
    // 1.创建副本
    id obj = [super mutableCopyWithZone:zone];

    // 2.设置数据给副本
    [obj setHeight:_height];

    // 3.返回副本
    return obj;
}

//重写description方法
- (NSString *)description
{
    return [NSString stringWithFormat:@"name = %@, age = %i, height = %.2f", [self name], [self age], _height];
}

@end
