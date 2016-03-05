//
//  main.m
//  字符串截取2
//
//  Created by Apple on 15/12/8.
//  Copyright © 2015年 Apple. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {

    //使用第二种方式动态截取字符串
    NSString *str = @"<www.cnblogs.com>keenleung</www.cnblogs.com>";

    //1.第一种：<head>keenleung</head> -> keenleung</head> -> keenleung
    //先截取出后半部分
    NSUInteger location = [str rangeOfString:@">"].location + 1;
    NSString *newStr = [str substringFromIndex:location];
    //再从newStr中截取前半部分
    location = [newStr rangeOfString:@"</"].location;
    newStr = [newStr substringToIndex:location];
    //打印结果
    NSLog(@"str = %@",str);
    NSLog(@"str = %@",newStr);

    //2.第二种：<head>keenleung</head> -> <head>keenleung -> keenleung
    //先截取前半部分
    location = [str rangeOfString:@"</"].location;
    newStr = [str substringToIndex:location];
    //再截取后半部分
    location = [newStr rangeOfString:@">"].location + 1;
    newStr = [newStr substringFromIndex:location];
    //打印结果
    NSLog(@"str = %@",str);
    NSLog(@"newStr = %@",newStr);

    return 0;
}
