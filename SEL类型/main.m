//
//  main.m
//  SEL类型
//
//  Created by Apple on 15/11/29.
//  Copyright © 2015年 Apple. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "Car.h"

int main(int argc, const char * argv[]) {

    //1.检查有没有实现某一个方法
    SEL sel1 = @selector(setAge:);
    Person *p1 = [[Person alloc] init];
    BOOL flag = [p1 respondsToSelector:sel1];
    NSLog(@"setAge : flag = %i",flag);

    SEL sel2 = @selector(test);
    //判断该对象是否实现了-test方法
    flag = [p1 respondsToSelector:sel2];
    NSLog(@"test : flag = %i",flag);
    //判断给类是否实现了+test方法
    flag = [Person respondsToSelector:sel2];
    NSLog(@"test : flag = %i",flag);

    //2.配合类/对象，来调用某一个方法
    //不包含参数
    SEL sel3 = @selector(demo);
    [p1 performSelector:sel3];
    //包含一个参数（必须是对象类型）
    SEL sel4 = @selector(demoWithNumber:);
    [p1 performSelector:sel4 withObject:@"123456"];
    //包含2个参数（必须是对象类型）,最多也只能是2个参数
    SEL sel5 = @selector(demoWithNumber:andName:);
    [p1 performSelector:sel5 withObject:@"123" withObject:@"Andi"];

    //3.配合对象将SEL类型作为方法的形参
    Car *car = [[Car alloc] init];
    SEL sel6 = @selector(carDemo);
    [p1 makeObject:car andSel:sel6];

    return 0;
}
