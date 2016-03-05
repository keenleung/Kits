//
//  Baby.h
//  Object-c-Test
//
//  Created by Apple on 15/12/2.
//  Copyright © 2015年 Apple. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BabyAssitProtocol.h"

@interface Baby : NSObject

//饥饿程度
@property(nonatomic,assign) int hungry;
//疲惫程度
@property(nonatomic,assign) int sleepy;

//请一个保姆来照顾婴儿(保姆要遵循协议）
@property(nonatomic, strong) id<BabyAssitProtocol> nanny;

//婴儿具备的行为
//吃东西
- (void)eating;
//睡觉
- (void) sleeping;

@end
