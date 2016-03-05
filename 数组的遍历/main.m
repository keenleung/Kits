//
//  main.m
//  数组的遍历
//
//  Created by Apple on 15/12/8.
//  Copyright © 2015年 Apple. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {

    NSArray *arr = @[@"keen",@"Andi",@"Phoenix",@"LiLi"];
    //方法1：常规遍历
    NSLog(@"方法1：常规遍历");
    for (int i = 0; i < [arr count]; i++) {
        NSLog(@"arr[%i] = %@",i,arr[i]);
    }

    //方法2：增强for循环来遍历
    NSLog(@"方法2：增强for循环来遍历");
    for (id obj in arr) {
        NSLog(@"obj = %@",obj);
    }

    //方法3：使用OC数组的迭代器进行遍历
    NSLog(@"方法3：使用迭代器遍历");
    //每取出一个元素，都会把元素放入obj，其对应的下标放入idx
    //stop：控制迭代器在什么时候停止
    [arr enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
        if (idx == 1) {
            *stop = YES;
        }
        NSLog(@"obj = %@, idx = %lu",obj, idx);
    }];

    return 0;
}
