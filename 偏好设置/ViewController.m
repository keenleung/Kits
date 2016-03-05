//
//  ViewController.m
//  偏好设置
//
//  Created by Apple on 16/2/22.
//  Copyright © 2016年 Apple. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

}
- (IBAction)showButtonDidClicked:(UIButton *)sender {
}

// 写入偏好设置
- (IBAction)saveButtonClick:(id)sender{

    // 偏好设置对象 NSUserDefaults
    NSUserDefaults *def = [NSUserDefaults standardUserDefaults];
    [def setObject:@"keen" forKey:@"name"];
    [def setBool:YES forKey:@"isMale"];
    [def setInteger:24 forKey:@"age"];

    // 立即写入: 在Library -> Preferences 文件夹中可以查看得到
    [def synchronize]; // 英文意式是 同步

    NSLog(@"偏好设置-完成");
}

// 读取偏好设置
- (IBAction)readButtonClick: (id)sender{

    // 偏好设置对象
    NSUserDefaults *def = [NSUserDefaults standardUserDefaults];
    // 根据 id 获取各个数值
    NSString *name = [def objectForKey:@"name"];
    BOOL isMale = [def boolForKey:@"isMale"];
    NSInteger age = [def integerForKey:@"age"];

    NSLog(@"偏好设置的各个数值: name = %@, isMale = %i, age = %zd", name, isMale, age);
}

@end
