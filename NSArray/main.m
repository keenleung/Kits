//
//  main.m
//  NSArray
//
//  Created by Apple on 15/12/8.
//  Copyright © 2015年 Apple. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

int main(int argc, const char * argv[]) {

    //情景1：创建，存放多种对象类型
    Person *person = [[Person alloc] init];
    NSObject *obj = [[NSObject alloc] init];
    NSArray *arr = [NSArray arrayWithObjects:person, obj, @"keen", nil];
    //打印结果
    NSLog(@"情景1");
    NSLog(@"arr = %@",arr);
    NSLog(@"[arr count] = %lu",[arr count]);
    NSLog(@"last object = %@",[arr lastObject]);
    NSLog(@"first object = %@",[arr firstObject]);
    NSLog(@"arr[1] = %@",[arr objectAtIndex:1]);

    //情景2：查看数组中是否包含某个对象
    arr = [NSArray arrayWithObjects:@"keen", @"Andi", @"Phonix", nil];
    NSLog(@"情景2");
    if ([arr containsObject:@"Andi2"]) {
        NSLog(@"包含Andi2");
    }else{
        NSLog(@"不包含Andi2");
    }

    //情景3：简写
    arr = @[@"keen",@"Andi",@"Phoenix",@"Landi"];
    NSLog(@"情景3");
    NSLog(@"arr = %@",arr);
    NSLog(@"arr[1] = %@",arr[1]);

    return 0;
}
