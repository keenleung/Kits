//
//  main.m
//  类型常量
//
//  Created by Apple on 16/1/29.
//  Copyright © 2016年 Apple. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ConstManager.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSLog(@"%@", _ApplicationName);
        NSLog(@"%@", _UserName);

        _ApplicationName2 = @"New Application";
        NSLog(@"%@", _ApplicationName2);

        ConstManager *cm = [[ConstManager alloc] init];
        [cm showName];
    }
    return 0;
}
