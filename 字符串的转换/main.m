//
//  main.m
//  字符串的转换
//
//  Created by Apple on 15/12/8.
//  Copyright © 2015年 Apple. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {

    //场景1：字符串转大写
    NSString *str = @"keen";
    NSString *newStr = [str uppercaseString];
    //打印结果
    NSLog(@"场景1");
    NSLog(@"str = %@",str);
    NSLog(@"newStr = %@",newStr);

    //场景2：字符串转小写
    newStr = [newStr lowercaseString];
    //打印结果
    NSLog(@"场景2");
    NSLog(@"newStr = %@",newStr);

    //场景3：将字符串的首字母转大写
    str = @"keen is a boy";
    newStr = [str capitalizedString];
    //打印结果
    NSLog(@"场景3");
    NSLog(@"str = %@",str);
    NSLog(@"newStr = %@",newStr);

    //场景4：字符窜转基本数据类型
    NSString *str1 = @"12";
    NSString *str2 = @"34";
    int num1 = [str1 intValue];
    int num2 = [str2 intValue];
    //打印结果
    NSLog(@"场景4");
    NSLog(@"num1 + num2 = %i",num1 + num2);

    //场景5：c语言字符串和OC语言字符串的转换
    //1)c->oc
    char *cStr = "this is a test";
    NSString *ocStr = [NSString stringWithUTF8String:cStr];
    //打印结果
    NSLog(@"场景5-1");
    NSLog(@"ocStr = %@",ocStr);

    //2)oc-c
    ocStr = @"keen";
    const char* cStr2 = [ocStr UTF8String];
    NSLog(@"cStr2 = %s",cStr2);

    return 0;
}
