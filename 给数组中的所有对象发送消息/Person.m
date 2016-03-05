//
//  Person.m
//  Object-c-Test
//
//  Created by Apple on 15/12/9.
//  Copyright © 2015年 Apple. All rights reserved.
//

#import "Person.h"

@implementation Person

- (void)cheer{
    NSLog(@"加油");
}

- (void)cheerWithName:(NSString *)name{
    NSLog(@"%@ 加油",name);
}

@end
