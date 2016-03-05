//
//  main.m
//  多态
//
//  Created by Apple on 15/11/22.
//  Copyright © 2015年 Apple. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Dog.h"
#import "Cat.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // 父类对象指针指向子类对象
        Animal *a1 = [[Dog alloc] init];
        [a1 eat];
        Dog *d = (Dog *)a1;
        [d fight];// 如果父类中没有该方法，需要先转化对象为子类对象，然后调用

        Animal *a2 = [[Cat alloc] init];
        [a2 eat];
        Cat *c = (Cat *)a2;
        [c catchMouse];
    }
    return 0;
}
