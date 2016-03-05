//
//  ViewController.m
//  copy内存管理
//
//  Created by Apple on 15/12/12.
//  Copyright © 2015年 Apple. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    // 注意：
    /*
     内存管理原则：
     一次alloc，对应一次release
     一次retain，对应一次release
     一次copy，对应一次release
     
     浅拷贝：不会生成新的对象，但系统会对原来的对象进行retain，所以需要对原来的对象进行一次release。
     深拷贝：会生成新的对象，系统不会对原来的对象进行retain。但因为生成新的对象，所以需要对新对象进行一次release。
     */

    // 情况1：浅拷贝
    NSString *str1 = [[NSString alloc] initWithFormat:@"keen1"];
    NSLog(@"str1 retainCount = %lu",[str1 retainCount]);
    NSString *str2 = [str1 copy];
    NSLog(@"str2 retainCount = %lu",[str2 retainCount]);

    [str1 release];
    [str1 release];

    // 情况2：深拷贝
    NSString *str3 = [[NSString alloc] initWithFormat:@"keen2"];
    NSLog(@"str3 retainCount = %lu",[str3 retainCount]);
    NSMutableString *str4 = [str3 mutableCopy];
    NSLog(@"str4 retainCount = %lu",[str4 retainCount]);
    [str3 release];
    [str4 release];
}

@end
