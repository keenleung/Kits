//
//  Html.h
//  Object-c-Test
//
//  Created by Apple on 16/3/8.
//  Copyright © 2016年 Apple. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Html : NSObject

@property (nonatomic, strong) NSString *title;

@property (nonatomic, strong) NSString *html;

@property (nonatomic, strong) NSString *ID;

/**
 *  加载 json 数据
 */
+ (NSArray *) htmlFromLocalJsonFile;


/**
 *  json 数据转模型
 */
+ (instancetype)htmlWithDict:(NSDictionary *)dict;

@end
