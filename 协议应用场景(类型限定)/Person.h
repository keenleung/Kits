//
//  Person.h
//  Object-c-Test
//
//  Created by Apple on 15/12/2.
//  Copyright © 2015年 Apple. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Wife.h"
#import "WifeCondition.h"

@interface Person : NSObject

//注意：记住一点，类型限定是写在数据类型的右边
//我要限定，我自己的老婆应该满足哪些条件
@property(nonatomic, strong) Wife<WifeCondition> *myWife;

- (void)show;
@end
