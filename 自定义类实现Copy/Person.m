//
//  Person.m
//  Object-c-Test
//
//  Created by Apple on 15/12/13.
//  Copyright © 2015年 Apple. All rights reserved.
//

#import "Person.h"

@implementation Person

- (id)copyWithZone:(nullable NSZone *)zone{
    // 1.创建一个新对象
    Person *p = [[[self class] allocWithZone:zone] init];

    // 2.设置当前对象的内容给新对象
    p.name = _name;
    p.age = _age;

    // 3.返回新对象
    return p;
}

- (id)mutableCopyWithZone:(nullable NSZone *)zone{
    // 1.创建一个新对象
    Person *p = [[[self class] allocWithZone:zone] init];

    // 2.设置当前对象的内容给新对象
    p.name = _name;
    p.age = _age;

    // 3.返回新对象
    return p;
}

- (NSString *)description
{
    return [NSString stringWithFormat:@"name = %@, age = %i", _name, _age];
}

@end
