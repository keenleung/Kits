//
//  Person.m
//  Object-c-Test
//
//  Created by Apple on 15/11/28.
//  Copyright © 2015年 Apple. All rights reserved.
//

#import "Person.h"

@implementation Person

-(instancetype)init{
    if (self = [super init]) {
        _age = 23;
        _name = @"";
    }
    return self;
}

//自定义构造方法
-(instancetype)initWithAge:(int)age andName:(NSString *)name{
    if (self = [super init]) {
        _age = age;
        _name = name;
    }
    return self;
}

-(instancetype)initwithAge:(int)age{
    if ([self initWithAge:age andName:@""]) {

    }
    return self;
}

-(instancetype)initWithName:(NSString *)name{
    if ([self initWithAge:24 andName:name]) {

    }
    return self;
}

//重写description方法
- (NSString *)description
{
    return [NSString stringWithFormat:@"age = %i, name = %@", _age,_name];
}

@end
