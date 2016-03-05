//
//  main.m
//  枚举
//
//  Created by Apple on 15/12/20.
//  Copyright © 2015年 Apple. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {

    // 第一种定义方法
    //enum定义，第一个参数：枚举值所属的类型；第二个参数：枚举类型的名称
    typedef NS_ENUM(NSInteger, colorEnum){ // 指定底层数据类型为 NSInteger
        red = 1,
        green = 2,
        black = 3
    };

    colorEnum myColor = green;
    NSLog(@"myColor = %lu",myColor);

    // 第二种定义方法
    typedef enum{
        male = 1,
        female = 2
    }sexEnum;
    sexEnum sex = male;
    NSLog(@"sex = %i", sex);

    return 0;
}
