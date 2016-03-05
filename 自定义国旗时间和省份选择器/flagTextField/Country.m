//
//  Country.m
//  34-自定义国旗键盘
//
//  Created by Apple on 16/2/19.
//  Copyright © 2016年 Apple. All rights reserved.
//

#import "Country.h"

@implementation Country

- (instancetype) initWithDict: (NSDictionary *)dict{
    if (self = [super init]) {
        [self setValuesForKeysWithDictionary:dict];
        // setValueForKeysWIthDictionary 底层会调用以下方法:
        /*
        [dict enumerateKeysAndObjectsUsingBlock:^(id  _Nonnull key, id  _Nonnull obj, BOOL * _Nonnull stop) {
            [self setValue:obj forKeyPath:key];
        }];
         */
    }
    return self;
}

+ (instancetype) countryWithDict: (NSDictionary *)dict{
    return [[self alloc] initWithDict:dict];
}

+ (NSArray *) countryList{
    // 加载 plist
    NSString *path = [[NSBundle mainBundle] pathForResource:@"flags" ofType:@"plist"];
    NSArray *dictArr = [NSArray arrayWithContentsOfFile:path];

    // 字典转模型
    NSMutableArray *arrM = [NSMutableArray array];
    [dictArr enumerateObjectsUsingBlock:^(NSDictionary *dict, NSUInteger idx, BOOL * _Nonnull stop) {
        Country *country = [Country countryWithDict:dict];

        [arrM addObject:country];
    }];

    // 返回
    return arrM;
}

// 重写 icon 的 set 方法
- (void)setIcon:(id)icon{
    NSString *iconStr = (NSString *)icon;
    UIImage *iconImage = [UIImage imageNamed:iconStr];
    _icon = iconImage;
}

@end
