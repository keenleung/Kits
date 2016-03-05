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
        _age = 24;
    }
    return self;
}

- (NSString *)description
{
    return [NSString stringWithFormat:@"age = %i", _age];
}

@end
