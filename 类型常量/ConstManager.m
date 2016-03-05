//
//  ConstManager.m
//  Object-c-Test
//
//  Created by Apple on 16/1/29.
//  Copyright © 2016年 Apple. All rights reserved.
//

#import "ConstManager.h"

NSString *const _ApplicationName = @"MyApplication";
const NSString *_ApplicationName2 = @"MyApplication2";
static NSString *const _UserName = @"keen";

@implementation ConstManager

- (void)showName{
    NSLog(@"_UserName = %@", _UserName);
}

@end