//
//  Person.m
//  Object-c-Test
//
//  Created by Apple on 15/11/28.
//  Copyright © 2015年 Apple. All rights reserved.
//

#import "Person.h"

@implementation Person

//类工厂方法实现
+(instancetype)person{
//    return [[Person alloc] init];
    return [[self alloc] init];
}
+(instancetype)personWithAge:(int)age{
//    Person *p = [[Person alloc] init];
    Person *p = [[self alloc] init];
    p.age = age;
    return p;
}

@end
