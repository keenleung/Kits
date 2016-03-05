//
//  main.m
//  Copy基本使用(深浅拷贝)
//
//  Created by Apple on 15/12/12.
//  Copyright © 2015年 Apple. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {

    // 注意：
    // 1）通过copy和mutableCopy来创建对象副本。copy会创建一个不可变副本。mutableCopy会创建一个可变副本。
    // 2）使用copy的前提是：遵守NSCopying协议，实现copyWithZone方法。
    // 3）使用mutableCopy前提是：遵守NSMutableCopying，实现mutableCopyWithZone方法。

    // 情况1：不可变进行拷贝
    NSString *srcStr = @"keen";
    NSString *copyStr1 = [srcStr copy];
    NSMutableString *copyStr2 = [srcStr mutableCopy];
    // 结果是：不可变 -> 不可变：没有生成一个新对象（浅拷贝）;
    //        不可变 -> 可变：生成一个新对象（深拷贝）
    NSLog(@"情况");
    NSLog(@"srcStr = %p, copyStr1 = %p, copyStr2 = %p",srcStr, copyStr1, copyStr2);

    // 情况2：可变进行拷贝
    NSMutableString *srcStrM = [NSMutableString stringWithString:@"keen"];
    NSString *copyStr3 = [srcStrM copy];
    NSMutableString *copyStr4 = [srcStrM mutableCopy];
    NSLog(@"情况2");
    // 结果是：可变 -> 不可变：生成一个新对象（深拷贝）
    //        可变 -> 可变：生成一个新对象（深拷贝）
    NSLog(@"srcStrM = %p, copyStr3 = %p, copyStr4 = %p",srcStrM, copyStr3, copyStr4);

    return 0;
}
