//
//  ViewController.m
//  MJExtensionTest2
//
//  Created by Apple on 16/1/31.
//  Copyright © 2016年 Apple. All rights reserved.
//

#import "ViewController.h"
#import "MJExtension.h"
#import "TGS.h"
#import "CarGroup.h"
#import "Car.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    //[self tgsData];

    //[self tgsData2];

    [self carsData];
}

// 3.获取 cars.plist 上的数据
- (void)carsData{
    // 设置数组中需要转换的模类型
    [CarGroup mj_setupObjectClassInArray:^NSDictionary *{
        return @{@"cars" : [Car class]};
    }];

    NSString *path = [[NSBundle mainBundle] pathForResource:@"cars" ofType:@"plist"];
    NSArray *arr = [CarGroup mj_objectArrayWithFile:path];

    [arr enumerateObjectsUsingBlock:^(CarGroup *obj, NSUInteger idx, BOOL * _Nonnull stop) {
        NSLog(@"%@", obj);
        NSLog(@"%@", obj.cars);
    }];
}

// 2.获取获取 tgs.plist 上的数据
- (void)tgsData2{
    NSString *path = [[NSBundle mainBundle] pathForResource:@"tgs" ofType:@"plist"];
    NSArray *arr = [TGS mj_objectArrayWithFile:path];
    [arr enumerateObjectsUsingBlock:^(TGS *obj, NSUInteger idx, BOOL * _Nonnull stop) {
        NSLog(@"%@", obj);
        NSLog(@"%@", obj)
    }];
}

// 1.获取 tgs.plist 上的数据
- (void)tgsData{
    NSString *path = [[NSBundle mainBundle] pathForResource:@"tgs" ofType:@"plist"];
    NSArray *dictArr = [NSArray arrayWithContentsOfFile:path];

    NSArray *arr = [TGS mj_objectArrayWithKeyValuesArray:dictArr];
    [arr enumerateObjectsUsingBlock:^(TGS *obj, NSUInteger idx, BOOL * _Nonnull stop) {
        NSLog(@"%@", obj);
    }];
}







@end
