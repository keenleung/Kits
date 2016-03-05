//
//  Person.m
//  Object-c-Test
//
//  Created by Apple on 15/11/22.
//  Copyright © 2015年 Apple. All rights reserved.
//

#import "Person.h"

@implementation Person
-(void)setAge:(int)age{
    _age = age;
}
-(void)setHeight:(double)height{
    _height = height;
}
-(void)setName:(NSString *)name{
    _name = name;
}

-(int)age{
    return  _age;
}
-(double)height{
    return _height;
}
-(NSString *)name{
    return _name;
}
@end
