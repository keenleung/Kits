//
//  NSObject+Extension.h
//  Object-c-Test
//
//  Created by Apple on 16/3/8.
//  Copyright © 2016年 Apple. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSObject (Extension)

/**
 *  告诉模型里哪个属性需要映射字典里哪个key
 */
+ (instancetype)objectWithDict:(NSDictionary *)dict mapDict:(NSDictionary *)mapDict;

@end
