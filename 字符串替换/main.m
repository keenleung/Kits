//
//  main.m
//  字符串替换
//
//  Created by Apple on 15/12/8.
//  Copyright © 2015年 Apple. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {

    //情景1：将&符号替换成/符号
    NSString *str = @"http:&&www.cnblogs.com&keenleung&2314143";
    //
    NSString *newStr = [str stringByReplacingOccurrencesOfString:@"&" withString:@"/"];
    NSLog(@"情景1");
    NSLog(@"str = %@",str);
    NSLog(@"newStr = %@",newStr);

    //情景2：去掉空格，并将&符号替换成/符号
    str = @"  http:   &&   www.cnblogs.com  &   keenleung   &   2314143   ";
    //先去掉空格
    newStr = [str stringByReplacingOccurrencesOfString:@" " withString:@""];
    //再将&替换为/
    newStr = [newStr stringByReplacingOccurrencesOfString:@"&" withString:@"/"];
    //打印结果
    NSLog(@"情景2");
    NSLog(@"str = %@",str);
    NSLog(@"newStr = %@",newStr);

    //情景3：替换首位
    str = @"  www.cnblogs.com/keenleung/123131   ";
    //1）把首尾的空格去掉
    NSCharacterSet *set = [NSCharacterSet whitespaceCharacterSet];
    newStr = [str stringByTrimmingCharactersInSet:set];
    //打印结果
    NSLog(@"情景3-1");
    NSLog(@"str = %@",str);
    NSLog(@"newStr = %@",newStr);

    //2）把首尾的大写部分都去掉
    str = @"HTTP://www.cnblogs.com/keenleung/OBJECT";
    set = [NSCharacterSet uppercaseLetterCharacterSet];
    newStr = [str stringByTrimmingCharactersInSet:set];
    NSLog(@"情景3-2");
    NSLog(@"str = %@",str);
    NSLog(@"newStr = %@",newStr);

    return 0;
}
