//
//  main.m
//  数组对象的内存管理
//
//  Created by Apple on 15/12/12.
//  Copyright © 2015年 Apple. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

int main(int argc, const char * argv[]) {

    // 注意：实在MRC下操作
    @autoreleasepool {
        // 1.如果一个对象添加到一个数组中，那么数组会对它进行一次retain操作。
        Person *p = [[Person alloc] init]; // 1
        NSLog(@"情况1");
        NSLog(@"p init : retainCount = %lu",[p retainCount]);
        NSMutableArray *array = [[NSMutableArray alloc] init];
        [array addObject:p]; // 2
        NSLog(@"p add into array : retainCount = %lu",[p retainCount]);

        [p release]; // 1

        // 2.当数组对象释放后，会对数组中所有对象发送一个release消息
        [array release]; // 0

        // 3.当数组移除一个对象后，会对这个对象发送一个release消息
        NSLog(@"情况2");
        Person *p2 = [[Person alloc] init]; // 1
        NSLog(@"p2 init : retainCount = %lu",[p2 retainCount]);
        NSMutableArray *array2 = [[NSMutableArray alloc] init];
        [array2 addObject:p2]; // 2
        NSLog(@"p2 add into array2 : retainCount = %lu",[p2 retainCount]);
        [p2 release]; // 1
        [array2 removeObject:p2]; // 0
    }

    return 0;
}
