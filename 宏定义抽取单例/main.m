//
//  main.m
//  宏定义抽取单例
//
//  Created by Apple on 15/12/13.
//  Copyright © 2015年 Apple. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Tools.h"
#import "Person.h"

int main(int argc, const char * argv[]) {


    Tools *tool1 = [[Tools alloc] init];
    Tools *tool2 = [Tools new];// 相当于 [[alloc] init]
    Tools *tool3 = [Tools shareTools];
    //    NSLog(@"tool1 = %p, tool2 = %p, tool3 = %p",tool1, tool2, tool3);

    Tools *tool4 = [tool1 copy];
    Tools *tool5 = [tool1 mutableCopy];

    NSLog(@"tool1 = %p, tool2 = %p, tool3 = %p, tool4 = %p, tool5 = %p",tool1, tool2, tool3, tool4, tool5);

    Person *p1 = [Person sharePerson];
    Person *p2 = [[Person alloc] init];
    Person *p3 = [Person new];
    Person *p4 = [p1 copy];
    Person *p5 = [p1 mutableCopy];
    NSLog(@"p1 = %p, p2 = %p, p3 = %p, p4 = %p, p5 = %p",p1, p2, p3, p4, p5);

    // 判断当前是ARC还是MRC
    // 可以判断后，放到宏定义中
    /*
#if __has_feature(objc_arc)
    NSLog(@"ARC");
#else
    NSLog(@"MRC");
#endif
     */


    return 0;
}
