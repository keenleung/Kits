//
//  main.m
//  NSMutableString的一个练习
//
//  Created by Apple on 15/12/8.
//  Copyright © 2015年 Apple. All rights reserved.
//

#import <Foundation/Foundation.h>
void myMethod();

int main(int argc, const char * argv[]) {

    //需求：将3个Andi拼接在一起，中间使用空格间隔
    NSString *str = @"Andi";
    NSMutableString *strM = [NSMutableString string];
    for (int i = 0; i < 3; i++) {
        //1.添加Andi
        [strM appendString:str];
        //2.添加一个空格
        [strM appendString:@" "];
    }
    //删除最后一个空格
    [strM deleteCharactersInRange:NSMakeRange(strM.length -1, 1)];
    //打印
    NSLog(@"strM = |%@|",strM);

    myMethod();

    return 0;
}

//方法2
//想法：创建一个数组，然后放入3个Andi元素，然后连接各个数组的元素，连接符是空格
void myMethod()
{
    NSString *str = @"Andi";
    NSMutableArray *arrM = [NSMutableArray array];
    for (int i = 0; i < 3; i++) {
        [arrM addObject:str];
    }

    NSString *newStr = [arrM componentsJoinedByString:@" "];
    NSLog(@"newStr = |%@|",newStr);

    NSArray *arr = [newStr componentsSeparatedByString:@" "];
    NSLog(@"arr = %@",arr);
}
