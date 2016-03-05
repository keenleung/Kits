//
//  Province.m
//  34-自定义国旗键盘
//
//  Created by Apple on 16/2/20.
//  Copyright © 2016年 Apple. All rights reserved.
//

#import "Province.h"

@implementation Province

// 构造方法
- (instancetype)initWithDict:(NSDictionary *)dict{
    if (self = [super init]) {
        [self setValuesForKeysWithDictionary:dict];
    }
    return self;
}

// 类工厂方法
+ (instancetype)provinceWithDict:(NSDictionary *)dict{
    return [[self alloc] initWithDict:dict];
}

// 获取数据列表
+ (NSArray *)provinceList{
    // 加载 plist
    NSString *path = [[NSBundle mainBundle] pathForResource:@"provinces" ofType:@"plist"];
    NSArray *arr = [NSArray arrayWithContentsOfFile:path];

    // 字典转模型
    NSMutableArray *arrM = [NSMutableArray array];
    [arr enumerateObjectsUsingBlock:^(NSDictionary *dict, NSUInteger idx, BOOL * _Nonnull stop) {
        Province *province = [Province provinceWithDict:dict];
        [arrM addObject:province];
    }];

    return arrM;
}

- (NSString *)description{
    return [NSString stringWithFormat:@"%@",_name];
}


@end
