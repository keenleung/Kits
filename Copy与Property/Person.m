//
//  Person.m
//  Object-c-Test
//
//  Created by Apple on 15/12/12.
//  Copyright © 2015年 Apple. All rights reserved.
//

#import "Person.h"

@implementation Person

- (void)dealloc
{
    // 只要给block发送一条release消息，block中使用的对象也会收到该消息
    Block_release(_pBlock);
    NSLog(@"%s",__func__);
    [super dealloc];
}

@end
