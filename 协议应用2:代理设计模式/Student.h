//
//  Student.h
//  Object-c-Test
//
//  Created by Apple on 15/12/2.
//  Copyright © 2015年 Apple. All rights reserved.
//

//多了一个学生来当保姆
#import <Foundation/Foundation.h>
#import "BabyAssitProtocol.h"

//让学生具备照顾婴儿的能力
@interface Student : NSObject<BabyAssitProtocol>

@end
