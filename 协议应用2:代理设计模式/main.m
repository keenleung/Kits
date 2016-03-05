//
//  main.m
//  协议应用2:代理设计模式
//
//  Created by Apple on 15/12/2.
//  Copyright © 2015年 Apple. All rights reserved.
//

//照料婴儿
#import <Foundation/Foundation.h>
#import "Baby.h"
#import "Nanny.h"
#import "Student.h"

int main(int argc, const char * argv[]) {

    Baby *baby = [[Baby alloc] init];
    [baby eating];
    [baby sleeping];


    NSLog(@"由保姆来照顾婴儿");
    Nanny *nanny = [[Nanny alloc] init];
    baby.nanny = nanny;
    [baby eating];
    [baby sleeping];

    NSLog(@"更换学生来照顾婴儿");
    //更换保姆，让学生来照顾
    Student *student = [[Student alloc] init];
    baby.nanny = student;
    [baby eating];
    [baby sleeping];

    return 0;
}
