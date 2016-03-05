//
//  Student.m
//  Object-c-Test
//
//  Created by Apple on 15/12/2.
//  Copyright © 2015年 Apple. All rights reserved.
//

#import "Student.h"
#import "Baby.h"

@implementation Student

-(void)assitingEating:(Baby *)baby{
    baby.hungry -= 5;
    NSLog(@"学生来照顾婴儿吃饭: %i",baby.hungry);
}

-(void)assitingSleeping:(Baby *)baby{
    baby.sleepy -= 5;
    NSLog(@"学生来照顾婴儿睡觉: %i",baby.sleepy);
}

@end
