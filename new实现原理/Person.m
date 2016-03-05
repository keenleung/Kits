//
//  Person.m
//  Object-c-Test
//
//  Created by Apple on 15/11/26.
//  Copyright © 2015年 Apple. All rights reserved.
//

#import "Person.h"

@implementation Person

/*
//重写构造方法
-(instancetype)init{
    //1.父类初始化
    self = [super init];
    //2.判断父类是否初始化成功
    if (self != nil) {
        //初始化子类，设置属性的值
        [self setAge:6];
    }
    //3.返回对象地址
    return self;
}
*/


-(instancetype)init{
    //初始化父类，判断父类是否初始化成功
    if (self == [super init]) {
        //初始化子类，设置子类属性的值
        _age = 24;
    }
    return self;
}


@end
