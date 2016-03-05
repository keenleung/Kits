//
//  Person.m
//  Object-c-Test
//
//  Created by Apple on 16/1/10.
//  Copyright © 2016年 Apple. All rights reserved.
//

#import "Person.h"

@implementation Person

-(void)buyMilk:(NSNotification *)noti{
    NSLog(@"通知:%@",_name);
    NSLog(@"%@",noti.name);
    NSLog(@"%@",noti.object);
    NSLog(@"%@",noti.userInfo);
}

// 退订
// 如果对象销毁了,还发布了通知,相当于向野指针发送消息了,所以要对象销毁的时候,退订
-(void)dealloc{

    [[NSNotificationCenter defaultCenter] removeObserver:self];
}

@end
