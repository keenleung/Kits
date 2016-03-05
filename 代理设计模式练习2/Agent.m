//
//  Agent.m
//  Object-c-Test
//
//  Created by Apple on 15/12/3.
//  Copyright © 2015年 Apple. All rights reserved.
//

#import "Agent.h"
#import "Person.h"

@implementation Agent

-(void)personWantToFindApartment:(Person *)person{
    NSLog(@"%s 代理帮忙找房子",__func__);
//    KeenLog(@"%s",__func__);
}

@end
