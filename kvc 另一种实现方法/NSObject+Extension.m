//
//  NSObject+Extension.m
//  Object-c-Test
//
//  Created by Apple on 16/3/8.
//  Copyright © 2016年 Apple. All rights reserved.
//

#import "NSObject+Extension.h"
#import <objc/runtime.h>

@implementation NSObject (Extension)

+ (instancetype)objectWithDict:(NSDictionary *)dict mapDict:(NSDictionary *)mapDict{

    // 实例化对象
    id objc = [[self alloc] init];

    // 记录属性个数
    unsigned int count = 0;

    // IVar
    Ivar *ivars = class_copyIvarList(self, &count);

    // 遍历
    for (int i = 0; i< count ; i++) {

        Ivar ivar = ivars[i];

        NSString *name = @(ivar_getName(ivar)); // 第三个属性是 ID

        name = [name substringFromIndex:1];

        id value = dict[name];

        if (!value) {

            if (mapDict) {

                NSString *mapName = mapDict[name];

                value = dict[mapName];
            }
        }

        [objc setValue:value forKeyPath:name];
    }

    return objc;
}

@end
