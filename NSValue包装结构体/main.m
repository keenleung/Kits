//
//  main.m
//  NSValue包装结构体
//
//  Created by Apple on 15/12/10.
//  Copyright © 2015年 Apple. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {

    // 情景1：通过NSValue包装常见结构体
    CGPoint point = NSMakePoint(10, 20);
    NSValue *pointValue = [NSValue valueWithPoint:point];
    NSArray *arr = @[pointValue];
    NSLog(@"情景1");
    NSLog(@"arr = %@",arr);

    // 情景2：通过NSValue包装自定义结构体
    typedef struct{
        char *name;
        int age;
        double height;
    } Person;

    Person p = {"keen", 24, 1.65};
    // valueWithBytes：需要包装的结构体的地址
    // objCType：类型（固定写法：@encode(类型)）
    NSValue *pValue = [NSValue valueWithBytes:&p objCType:@encode(Person)];
    arr = @[pValue];
    NSLog(@"情景2");
    NSLog(@"arr = %@",arr);
    //取出值
    // getValue：将值copy到指定的容器上
    Person newP;
    [pValue getValue:&newP];
    NSLog(@"name = %s, age = %i, height = %.2f",newP.name, newP.age, newP.height);

    return 0;
}
