//
//  main.m
//  字符串比较
//
//  Created by Apple on 15/12/7.
//  Copyright © 2015年 Apple. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {

    NSString *str1 = @"abc";
    NSString *str2 = @"ABC";

    //NSOrderedAscending = -1L, NSOrderedSame, NSOrderedDescending
    NSComparisonResult result = [str1 compare:str2];
    switch (result) {
        case NSOrderedAscending:
            NSLog(@"str1 < str2");
            break;
        case NSOrderedSame:
            NSLog(@"str1 = str2");
            break;
        case NSOrderedDescending:
            NSLog(@"str1 > str2");
            break;
        default:
            break;
    }

    NSLog(@"忽略大小写:");
    //忽略大小写
    result = [str1 caseInsensitiveCompare:str2];
    switch (result) {
        case NSOrderedAscending:
            NSLog(@"str1 < str2");
            break;
        case NSOrderedSame:
            NSLog(@"str1 = str2");
            break;
        case NSOrderedDescending:
            NSLog(@"str1 > str2");
            break;

        default:
            break;
    }

    return 0;
}
