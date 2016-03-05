//
//  Person.m
//  Object-c-Test
//
//  Created by Apple on 15/11/23.
//  Copyright © 2015年 Apple. All rights reserved.
//

#import "Person.h"

@implementation Person

-(void)setAge:(int)age{
    _age = age;
}
-(void)setName:(NSString *)name{
    _name = name;
}
-(int)age{
    return _age;
}
-(NSString *)name{
    return _name;
}


//重写-description方法
- (NSString *)description
{
    return @"- description";
}

//重写+description方法
+(NSString *)description{
    return @"+ description";
}
@end
