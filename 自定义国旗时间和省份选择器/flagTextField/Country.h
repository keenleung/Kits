//
//  Country.h
//  34-自定义国旗键盘
//
//  Created by Apple on 16/2/19.
//  Copyright © 2016年 Apple. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Country : NSObject

// 属性
@property (nonatomic, copy) NSString *name;
@property (nonatomic, copy) UIImage *icon;

- (instancetype) initWithDict:(NSDictionary *)dict;
+ (instancetype) countryWithDict: (NSDictionary *)dict;

+ (NSArray *)countryList;

@end
