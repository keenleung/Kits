//
//  Person.m
//  Object-c-Test
//
//  Created by Apple on 15/11/24.
//  Copyright © 2015年 Apple. All rights reserved.
//

#import "Person.h"

@implementation Person
{
    @public
    NSString *sex;
}
-(void) test{
    NSLog(@"%@",@"This is a test.");
}

-(void) test2{
    self.test;
}

@end
