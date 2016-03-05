//
//  Person.m
//  Object-c-Test
//
//  Created by Apple on 16/2/22.
//  Copyright © 2016年 Apple. All rights reserved.
//

#import "Person.h"

// 归档需要遵循 NSCoding 协议
@interface Person()<NSCoding>

@end

@implementation Person

// 表明那些对象属性需要 归档
- (void) encodeWithCoder:(NSCoder *)aCoder{
    [aCoder encodeObject:self.name forKey:@"person.name"];
    [aCoder encodeInteger:self.age forKey:@"person.age"];
    [aCoder encodeObject:self.dog forKey:@"person.dog"];
}

// 解档的时候,哪些属性需要解释
- (instancetype)initWithCoder:(NSCoder *)aDecoder{
    if (self = [super init]) {
        self.name = [aDecoder decodeObjectForKey:@"person.name"];
        self.age = [aDecoder decodeIntegerForKey:@"person.age"];
        self.dog = [aDecoder decodeObjectForKey:@"person.dog"];
    }
    return self;
}

@end
