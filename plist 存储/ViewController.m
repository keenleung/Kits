//
//  ViewController.m
//  plist 存储
//
//  Created by Apple on 16/2/22.
//  Copyright © 2016年 Apple. All rights reserved.
//

#import "ViewController.h"
#import "Person.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    // 获取沙盒的根目录
    NSString *rootPath = NSHomeDirectory();
    NSLog(@"%@", rootPath);
}

// 写入
- (IBAction)saveButtonDidClicked:(UIButton *)sender{

    // 1.获取沙盒指定目录(此处为沙盒中的 Documents 文件)
    NSString *path = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES).firstObject;

    // 2.拼接路径名称
    NSString *arrFilePath = [path stringByAppendingPathComponent:@"arry.plist"];

    // 3.把数组数据写入到文件中
    NSArray *arr = @[@"keen", @"andi", @"phoenix"];
    [arr writeToFile:arrFilePath atomically:YES];

    // 4.把字典写入到文件中
    NSString *dictFilePath = [path stringByAppendingPathComponent:@"dict.plist"];
    NSDictionary *dict = @{@"name" : @"keen", @"age" : @"24", @"height" : @"156"};
    [dict writeToFile:dictFilePath atomically:YES];

    // 5.写入自定义对象到文件中
    // 没发现文件--> 不能把自定义对象存储到文件中
    NSString *objFilePath = [path stringByAppendingPathComponent:@"object.plist"];
    Person *p1 = [[Person alloc] init];
    p1.name = @"keen";
    p1.age = 24;
    NSArray *objArr = @[p1];
    [objArr writeToFile:objFilePath atomically:YES];

    NSLog(@"Save End...");
}

// 读取
- (IBAction)readButtonDidClicked:(UIButton *)sender{
    // 1.获取沙盒指定目录
    NSString *path = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES).firstObject;

    // 2.拼接路径名称
    NSString *arrFilePath = [path stringByAppendingPathComponent:@"arry.plist"];
    NSString *dictFilePath = [path stringByAppendingPathComponent:@"dict.plist"];

    // 3.读取文件
    NSArray *arr = [NSArray arrayWithContentsOfFile:arrFilePath];
    NSDictionary *dict = [NSDictionary dictionaryWithContentsOfFile:dictFilePath];

    NSLog(@"arr = %@, dict = %@", arr, dict);
}

@end
