//
//  Person.m
//  Object-c-Test
//
//  Created by Apple on 15/11/29.
//  Copyright © 2015年 Apple. All rights reserved.
//

#import "Person.h"

@implementation Person

//类被加载的时候调用（仅调用一次）
+(void)load{
    NSLog(@"Person load");
}

//类对象被创建的时候被调用（仅调用一次）
+(void)initialize{
    NSLog(@"Person initialize.");
}

@end
