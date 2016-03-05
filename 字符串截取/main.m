//
//  main.m
//  字符串截取
//
//  Created by Apple on 15/12/8.
//  Copyright © 2015年 Apple. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {

    //把keenleung动态找出来
    NSString *str = @"<head>keenleung很牛B</head>";
    //找出其实位置
    NSUInteger location = [str rangeOfString:@">"].location + 1;
    //算出长度
    //NSUInteger length = [str rangeOfString:@"<" options:NSBackwardsSearch].location - location;//从后往前找
    NSUInteger length = [str rangeOfString:@"</"].location - location;
    //创建Range对象
    NSRange range = NSMakeRange(location, length);
    //截取字符串
    NSString *newStr = [str substringWithRange:range];
    //打印结果
    NSLog(@"str = %@",str);
    NSLog(@"newStr = %@",newStr);

    return 0;
}
