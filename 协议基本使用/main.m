//
//  main.m
//  协议基本使用
//
//  Created by Apple on 15/12/1.
//  Copyright © 2015年 Apple. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "Student.h"

int main(int argc, const char * argv[]) {

    // 需要注意的是，虽然遵守了协议，但就不说明一定实现了该协议的方法

    Person *p = [[Person alloc] init];
    [p playFootball];
    [p playBasketball];
    [p playBaseBll];

    Student *stu = [[Student alloc] init];
    [stu playFootball];
    [stu playBasketball];
    [stu playBaseBll];

}
