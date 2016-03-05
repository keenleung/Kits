//
//  main.m
//  协议应用场景(类型限定)
//
//  Created by Apple on 15/12/2.
//  Copyright © 2015年 Apple. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "Wife.h"
#import "WifeCondition.h"

int main(int argc, const char * argv[]) {

    Person *person = [[Person alloc] init];

    //1.协议的第一个应用场景：可以将协议写在数据类型的右边，明确地标注如果想给该变量赋值，那么该对象必须遵守某个协议
    //我要限定，我自己的老婆的应该满足哪些条件
    Wife<WifeCondition> *wife = [[Wife alloc] init];
    person.myWife = wife;

    [person show];

    return 0;
}
