//
//  Dog.m
//  Object-c-Test
//
//  Created by Apple on 16/2/22.
//  Copyright © 2016年 Apple. All rights reserved.
//

#import "Dog.h"

@interface Dog()<NSCoding>

@end

@implementation Dog

// 归档那些属性
- (void)encodeWithCoder:(NSCoder *)aCoder{
    [aCoder encodeObject:self.name forKey:@"dog.name"];
}

// 解档的时候, 哪些属性需要解释
- (instancetype)initWithCoder:(NSCoder *)aDecoder{
    if (self = [super init]) {
        self.name = [aDecoder decodeObjectForKey:@"dog.name"];
    }
    return self;
}

@end
