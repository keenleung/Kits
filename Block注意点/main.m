//
//  main.m
//  Block注意点
//
//  Created by Apple on 15/12/1.
//  Copyright © 2015年 Apple. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

int main(int argc, const char * argv[]) {

    __block Person *p = [[Person alloc] init];
    //Person *p = [[Person alloc] init];
    NSLog(@"retainCount = %lu",[p retainCount]);

    void (^myBlock)() = ^{
        NSLog(@"block retainCount = %lu",[p retainCount]);
        // block在栈中时，访问外部对象，不会对外部对象进行retain \
        block在堆中时，访问外部对象，会对外部对象进行retain \
        不管block在栈中还是在堆中，如果外部对象使用__block修饰，在block中被访问的时，都不会进行retain
    };

    Block_copy(myBlock);// 把block放入堆中
    myBlock();

    [p release];

    return 0;
}
