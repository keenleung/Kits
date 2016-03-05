//
//  Province.h
//  34-自定义国旗键盘
//
//  Created by Apple on 16/2/20.
//  Copyright © 2016年 Apple. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Province : NSObject

// 属性
@property (nonatomic, copy) NSString *name;
@property (nonatomic, strong) NSArray *cities;

// 方法
- (instancetype) initWithDict: (NSDictionary *)dict;
+ (instancetype) provinceWithDict: (NSDictionary *)dict;
+ (NSArray *)provinceList;

@end
