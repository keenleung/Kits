//
//  main.m
//  Block代码块
//
//  Created by Apple on 15/11/29.
//  Copyright © 2015年 Apple. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {

    //定义一个Block
    int(^sumBlock)(int,int);
    sumBlock = ^(int num1, int num2){
        return num1 + num2;
    };
    NSLog(@"sum = %i",sumBlock(10,20));

    void(^printHello)();
    printHello = ^(){
        NSLog(@"Hello world.");
    };
    printHello();

    //如果没有参数，()可以省略
    void(^printBlock)();
    printBlock = ^{
        NSLog(@"printBlock");
    };
    printBlock();


    return 0;
}
