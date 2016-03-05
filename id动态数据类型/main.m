//
//  main.m
//  id动态数据类型
//
//  Created by Apple on 15/11/26.
//  Copyright © 2015年 Apple. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "Student.h"

int main(int argc, const char * argv[]) {
    @try {
        id stu = [[Student alloc] init];
        //    [stu eat];
        //    [stu study];

        id per = [[Person alloc] init];
        //    [per eat];
        //    [per study];编译时不报错，运行时报错

        if ([stu isKindOfClass:[Student class]]) {
            [stu study];
        }
        if ([stu isMemberOfClass:[Student class]]) {
            [stu study];
        }

        if ([per isKindOfClass:[Student class]]) {
            [per study];
        }
        else{
            NSLog(@"不是Student类或其子类，不能发送study消息");
        }
        if ([per isMemberOfClass:[Student class]]) {
            [per study];
        }
        else{
            NSLog(@"不是Student类的实例，不能发送study消息");
        }
        
        [stu test];//也可以直接访问私有方法，但运行后会抛出：EXC_BAD_ACCESS
    }
    @catch (NSException *exception) {
        NSLog(@"%@",exception);
    }
    @finally {
        NSLog(@"end...");
    }



    return 0;
}
