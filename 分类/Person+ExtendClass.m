//
//  Person+ExtendClass.m
//  Object-c-Test
//
//  Created by Apple on 15/11/25.
//  Copyright © 2015年 Apple. All rights reserved.
//

#import "Person+ExtendClass.h"

@implementation Person (ExtendClass)

-(void)Test{
    NSLog(@"%@",@"This is a people.");
    NSLog(@"%@",_name);
//    NSLog(@"%@",self.name);
    NSLog(@"%i",self.age);
//    NSLog(@"%f",_height); //undeclared
}

@end
