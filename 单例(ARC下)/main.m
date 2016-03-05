//
//  main.m
//  单例(ARC下)
//
//  Created by Apple on 15/12/13.
//  Copyright © 2015年 Apple. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Tools.h"
#import "ToolChild.h"
#import "ToolChild2.h"

int main(int argc, const char * argv[]) {

    /*
    // 单例：无论创建多少次，都只能有一个实例对象（即都指向同一个地址）。
    // 地址相同，就代表同一个对象。

    Tools *tool1 = [[Tools alloc] init];
    Tools *tool2 = [Tools new];// 相当于 [[alloc] init]
    Tools *tool3 = [Tools shareInstance];
//    NSLog(@"tool1 = %p, tool2 = %p, tool3 = %p",tool1, tool2, tool3);

    Tools *tool4 = [tool1 copy];
    Tools *tool5 = [tool1 mutableCopy];

    NSLog(@"tool1 = %p, tool2 = %p, tool3 = %p, tool4 = %p, tool5 = %p",tool1, tool2, tool3, tool4, tool5);
     */
    Tools *t5 = [[Tools alloc] init];
    Tools *t6 = [Tools new];
    ToolChild *t1 = [[ToolChild alloc] init];
    ToolChild *t2 = [ToolChild new];
    ToolChild2 *t3 = [[ToolChild2 alloc] init];
    ToolChild2 *t4 = [ToolChild2 new];

    NSLog(@"t1 = %p, t2 = %p",t1, t2);
    NSLog(@"t3 = %p, t4 = %p",t3, t4);
    NSLog(@"t5 = %p, t6 = %p",t5, t6);

    return 0;
}
