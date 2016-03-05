//
//  main.m
//  通知
//
//  Created by Apple on 16/1/10.
//  Copyright © 2016年 Apple. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "Company.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Person *p1 = [[Person alloc] init];
        p1.name = @"keen";

        Person *p2 = [[Person alloc] init];
        p2.name = @"andi";


        Company *c1 = [[Company alloc] init];
        c1.name = @"三鹿";

        Company *c2 = [[Company alloc] init];
        c2.name = @"三元";

        // 通知中心
        NSNotificationCenter *center = [NSNotificationCenter defaultCenter];


        // 订阅通知,参数:
        // 谁订阅
        // 订阅时处理的操作
        // 订阅的名称
        // 指定接收谁发布的通知, nil 时,不管谁发布,只要订阅的名称一致,则就回执行操作

        // 其实就是向谁订阅通知:-p1 向 -谁 订阅 -deliverMilk 通知,执行的操作是 -buyMilk
        [center addObserver:p1 selector:@selector(buyMilk:) name:@"deliverMilk" object: nil];

        // p2 订阅 三元
        [center addObserver:p2 selector:@selector(buyMilk:) name:@"dliverMilk" object:c2];



        // 发布通知,参数:
        // 通知的名称
        // 发布通知的对象
        // 发布通知时,携带的参数
        [center postNotificationName:@"deliverMilk" object:c1 userInfo:@{@"count":@2,@"notes":@"bad milk"}];// 发牛奶,只要有人订阅了,就会收到

        [center postNotificationName:@"deliverMilk" object:c2 userInfo:@{@"count":@4,@"description":@"nice, good milk"}];// 发牛奶
    }
    
    return 0;
}
