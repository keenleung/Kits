//
//  main.m
//  给数组中的所有对象发送消息
//
//  Created by Apple on 15/12/9.
//  Copyright © 2015年 Apple. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

int main(int argc, const char * argv[]) {

    Person *p1 = [[Person alloc] init];
    Person *p2 = [[Person alloc] init];
    Person *p3 = [[Person alloc] init];
    Person *p4 = [[Person alloc] init];

    NSArray *arr = @[p1, p2, p3, p4];

    //方法1：使用迭代器
    NSLog(@"方法1");
    [arr enumerateObjectsUsingBlock:^(Person *obj, NSUInteger idx, BOOL *stop) {
//        [obj cheer];
        [obj cheerWithName:@"keen"];
    }];

    //方法2：调用数组中的方法，使得所有元素都指定执行某一个方法
    NSLog(@"方法2");
    //[arr makeObjectsPerformSelector:@selector(cheer)];//没有参数
    [arr makeObjectsPerformSelector:@selector(cheerWithName:) withObject:@"keen"];//包含一个参数（最多也就只能一个）

    return 0;
}
