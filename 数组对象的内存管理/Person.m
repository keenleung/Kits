//
//  Person.m
//  Object-c-Test
//
//  Created by Apple on 15/12/12.
//  Copyright © 2015年 Apple. All rights reserved.
//

#import "Person.h"

@implementation Person

-(void)dealloc{
    NSLog(@"%s",__func__);
    [super dealloc];
}

@end
