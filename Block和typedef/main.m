//
//  main.m
//  Block和typedef
//
//  Created by Apple on 15/11/29.
//  Copyright © 2015年 Apple. All rights reserved.
//

#import <Foundation/Foundation.h>

// block和typedef结合使用的时，block名称就是别名
typedef int (^calcBlock)(int ,int);

int main(int argc, const char * argv[]) {

//    int (^sumBlock)(int ,int);
    calcBlock sumBlock = ^(int num1, int num2){
        return num1 + num2;
    };
    NSLog(@"sum = %i",sumBlock(10,20));

//    int (^subBlock)(int, int);
    calcBlock subBlock = ^(int num1, int num2){
        return num1 - num2;
    };
    NSLog(@"sub = %i",subBlock(20,10));

    return 0;
}
