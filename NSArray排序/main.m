//
//  main.m
//  NSArray排序
//
//  Created by Apple on 15/12/9.
//  Copyright © 2015年 Apple. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

int main(int argc, const char * argv[]) {

    //情况1：非自定义对象排序
    //注意：如果使用compare方法对数组中的元素进行排序，那么数组中的元素必须是Foundation框架中的对象，也就是说不能是自定义对象。
    NSArray *arr = @[@12, @5, @30, @10, @1];
    NSArray *newArr = [arr sortedArrayUsingSelector:@selector(compare:)];
    NSLog(@"情况1");
    NSLog(@"排序前: arr = %@",arr);
    NSLog(@"排序后: newArr = %@",newArr);

    //情况2：自定义对象排序
    Person *p1 = [[Person alloc] init];
    Person *p2 = [[Person alloc] init];
    Person *p3 = [[Person alloc] init];
    Person *p4 = [[Person alloc] init];

    p1.age = 24;
    p2.age = 10;
    p3.age =18;
    p4.age = 7;

    arr = @[p1, p2, p3, p4];
    newArr = [arr sortedArrayWithOptions:NSSortStable usingComparator:^NSComparisonResult(Person *obj1, Person *obj2) {
//        NSLog(@"obj1 = %@, obj2 = %@",obj1,obj2);
//        return NSOrderedSame;
        return obj1.age < obj2.age;
    }];
    NSLog(@"情况2");
    NSLog(@"排序前：arr = %@",arr);
    NSLog(@"排序后：newArr = %@",newArr);

    return 0;
}
