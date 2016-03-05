//
//  main.m
//  NSMutableString常用方法
//
//  Created by Apple on 15/12/8.
//  Copyright © 2015年 Apple. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {

    NSMutableString *strM = [NSMutableString stringWithFormat:@"http://www.cnblogs.com"];

    //情况1：向字符串后面添加@"/keenleung"
    [strM appendFormat:@"/keenleung"];
    //打印结果
    NSLog(@"情况1");
    NSLog(@"strM = %@",strM);

    //情况2：删除指定字符串，leung
    NSRange range = [strM rangeOfString:@"leung"];
    [strM deleteCharactersInRange:range];
    //打印结果
    NSLog(@"情况2");
    NSLog(@"strM = %@",strM);

    //情况3：插入字符串,leung
    range = [strM rangeOfString:@"keen"];
    [strM insertString:@"leung" atIndex:(range.location + range.length)];
    //打印结果
    NSLog(@"情况3");
    NSLog(@"strM = %@",strM);

    //情况4：替换字符串：将keenleung替换为Andi
    /*注意：1）一般情况下，OC方法中的参数如果没有*，大部分都是枚举
           2）一般情况下，如果不想使用枚举值，可以传入0，代表按系统默认的方式处理
     */
    range = NSMakeRange(0, strM.length);
    [strM replaceOccurrencesOfString:@"keenleung" withString:@"Andi" options:0 range:range];
    //打印结果
    NSLog(@"情况4");
    NSLog(@"strM = %@",strM);


    return 0;
}
