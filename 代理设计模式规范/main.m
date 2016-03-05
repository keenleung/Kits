//
//  main.m
//  代理设计模式规范
//
//  Created by Apple on 15/12/3.
//  Copyright © 2015年 Apple. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Student.h"
#import "LoveHome.h"

int main(int argc, const char * argv[]) {

    Student *stu = [[Student alloc] init];
    LoveHome *lh = [[LoveHome alloc] init];
    stu.delegate = lh;
    [stu findHourse];

    return 0;
}
