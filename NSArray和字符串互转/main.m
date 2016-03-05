//
//  main.m
//  NSArray和字符串互转
//
//  Created by Apple on 15/12/9.
//  Copyright © 2015年 Apple. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {

    //情景1：链接各个数组中的元素
    NSArray *arr = @[@"keen", @"Andi", @"Phoenix"];
    NSString *str = [arr componentsJoinedByString:@"&"];
    NSLog(@"情景1");
    NSLog(@"str = %@",str);

    //情景2：字符串切割
    str = @"keen***Andi***Phoenix";
    arr = [str componentsSeparatedByString:@"***"];
    NSLog(@"情景2");
    NSLog(@"arr = %@",arr);

    return 0;
}
