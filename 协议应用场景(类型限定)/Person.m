//
//  Person.m
//  Object-c-Test
//
//  Created by Apple on 15/12/2.
//  Copyright © 2015年 Apple. All rights reserved.
//

#import "Person.h"

@implementation Person

-(void)show{
    //注意：虽然在接受某一个对象的时候，对这个对象进行了类型限定（限定它必须实现某个协议），但是并不意味着这个对象就真正的实现了该方法，所以每次在调用对象的鞋油方法时，应该进行一次验证。

    //虽然限定了自己的老婆的条件，但不一定就一定会做。所以还是要判断老婆是否会有某个方法
    //如果myWife实现了煮饭这个方法
    if ([self.myWife respondsToSelector:@selector(cooking)]) {
        [self.myWife cooking];
    }
    if ([self.myWife respondsToSelector:@selector(washing)]) {
        [self.myWife washing];
    }
    if ([self.myWife respondsToSelector:@selector(job)]) {
        [self.myWife job];
    }
}

@end
