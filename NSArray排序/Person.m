//
//  Person.m
//  Object-c-Test
//
//  Created by Apple on 15/12/9.
//  Copyright © 2015年 Apple. All rights reserved.
//

#import "Person.h"

@implementation Person

//重写父类的description方法
- (NSString *)description
{
    return [NSString stringWithFormat:@"age = %i", _age];
}

@end
