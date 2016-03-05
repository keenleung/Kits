//
//  main.m
//  字符串搜索
//
//  Created by Apple on 15/12/8.
//  Copyright © 2015年 Apple. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {

    NSString *str = @"http://www.cnblogs.com/keenleung/demo.gif";
    if ([str hasPrefix:@"http://"]){
        NSLog(@"是URL");
    }
    else{
        NSLog(@"不是URL");
    }

    if ([str hasSuffix:@".gif"]) {
        NSLog(@"是动态图片");
    }
    else{
        NSLog(@"不是动态图片");
    }

    NSRange range = [str rangeOfString:@"keenleung2"];
//    if (range.length > 0) {
//        NSLog(@"包含keenleung");
//        NSLog(@"location = %lu , length = %lu",range.location,range.length);
//    }
//    else{
//        //NSLog(@"%lu",NSNotFound);
//        NSLog(@"不包含keenleung");
//        NSLog(@"location = %lu , length = %lu",range.location,range.length);
//    }
    if (range.location == NSNotFound) {
        NSLog(@"找不到需要查找的字符串");
    }
    else{
        NSLog(@"location = %lu , length = %lu",range.location,range.length);
    }



    return 0;
}
