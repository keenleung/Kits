//
//  Person.m
//  Object-c-Test
//
//  Created by Apple on 15/11/25.
//  Copyright © 2015年 Apple. All rights reserved.
//

#import "Person.h"

@implementation Person
{
    double _height;
}

-(void)setName:(NSString *)name{
    _name = name;
}

-(NSString *)name{
    return _name;
}

-(void)Test{
    NSLog(@"%@",@"This is a test.");
}
@end
