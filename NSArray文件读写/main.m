//
//  main.m
//  NSArray文件读写
//
//  Created by Apple on 15/12/9.
//  Copyright © 2015年 Apple. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

int main(int argc, const char * argv[]) {

    //场景1：将NSArray中的数据写入文件
    //注意：1）如果将一个数组写入到文件中，本质上是写入了一个XML文件。
    //     2）在iOS开发中，一般情况下，将XML文件的扩展名保存为plist。（可以直接用Xcode打开，界面比较容易看懂）
    NSString *path = @"/Users/apple/Desktop/KeenApps/Object-C/Object-c-Test/NSArray文件读写/q.plist";
    NSArray *arr = @[@"keen", @"Andi", @"Phoenix"];
    BOOL flag = [arr writeToFile:path atomically:YES];
    NSLog(@"场景1：文件写入")
    if (flag) {
        NSLog(@"文件写入成功！");
    }else{
        NSLog(@"文件写入失败！");
    }

    //场景2：读取文件
    NSArray *newArr = [NSArray arrayWithContentsOfFile:path];
    NSLog(@"场景2：文件读取");
    NSLog(@"newArr = %@",newArr);

    //场景3：写入自定义对象
    //注意：根据结果，可以得知，writeToFile方法，不能写入自定义对象到文件中
    Person *p1 = [[Person alloc] init];
    Person *p2 = [[Person alloc] init];
    Person *p3 = [[Person alloc] init];

    p1.age = 23;
    p2.age = 24;
    p3.age = 30;

    NSArray *pArr = @[p1, p2 ,p3];
    path =@"/Users/apple/Desktop/KeenApps/Object-C/Object-c-Test/NSArray文件读写/pArr.plist";
    flag = [pArr writeToFile:path atomically:YES];
    NSLog(@"场景3：写入自定义对象")
    if (flag) {
        NSLog(@"可以写入自定义对象");
    }else{
        NSLog(@"不可以写入自定义对象");
    }

    return 0;
}
