//
//  Person.m
//  Object-c-Test
//
//  Created by Apple on 15/12/13.
//  Copyright © 2015年 Apple. All rights reserved.
//

#import "Person.h"

@implementation Person

//重写description
- (NSString *)description
{
    return [NSString stringWithFormat:@"name = %@, age = %i", _name, _age];
}

@end
