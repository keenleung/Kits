//
//  Html.m
//  Object-c-Test
//
//  Created by Apple on 16/3/8.
//  Copyright © 2016年 Apple. All rights reserved.
//

#import "Html.h"
#import "NSObject+Extension.h"

@implementation Html

+ (NSArray *) htmlFromLocalJsonFile{

    NSMutableArray *arrM = [NSMutableArray array];

    // 加载 json
    NSString *path = [[NSBundle mainBundle] pathForResource:@"help" ofType:@"json"];
    NSData *data = [NSData dataWithContentsOfFile:path];
    NSArray *arr = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingAllowFragments error:nil];

    [arr enumerateObjectsUsingBlock:^(NSDictionary *dict, NSUInteger idx, BOOL * _Nonnull stop) {
        Html *html = [self htmlWithDict:dict];
        [arrM addObject:html];
    }];

    return arrM;
}

+ (instancetype)htmlWithDict:(NSDictionary *)dict{

    return [self objectWithDict:dict mapDict:@{@"ID": @"id"}];
}

@end
