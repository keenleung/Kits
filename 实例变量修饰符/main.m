//
//  main.m
//  实例变量修饰符
//
//  Created by Apple on 15/11/23.
//  Copyright © 2015年 Apple. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Student.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Student *s = [[Student alloc] init];
//        s -> _age;
        //class方法，返回当前类的类对象
        NSLog(@"%@",[Student class]);
        NSLog(@"%@",s);
    }
    return 0;
}
