//
//  BabyAssitProtocol.h
//  Object-c-Test
//
//  Created by Apple on 15/12/2.
//  Copyright © 2015年 Apple. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Baby;

//声明照顾婴儿的协议
@protocol BabyAssitProtocol <NSObject>

//照顾喂食
- (void) assitingEating:(Baby *)baby;

//照顾睡觉
- (void) assitingSleeping:(Baby *)baby;

@end
