//
//  Baby.m
//  Object-c-Test
//
//  Created by Apple on 15/12/2.
//  Copyright © 2015年 Apple. All rights reserved.
//

#import "Baby.h"

@implementation Baby

-(void)eating{
    self.hungry += 5;
    NSLog(@"Baby : 饿了 %i",self.hungry);
    //判断保姆是否确切包含 照顾喂食 行为
    if ([self.nanny respondsToSelector:@selector(assitingEating:)]) {
        [self.nanny assitingEating:self];
    }
}

-(void)sleeping{
    self.sleepy += 5;
    NSLog(@"Baby : 困了 %i",self.sleepy);
    //判断保姆是否确切包含 照顾睡觉 行为
    if ([self.nanny respondsToSelector:@selector(assitingSleeping:)]) {
        [self.nanny assitingSleeping:self];
    }
}

@end
