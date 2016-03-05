//
//  main.m
//  点语法
//
//  Created by Apple on 15/11/22.
//  Copyright © 2015年 Apple. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

int main(int argc, const char * argv[]) {

    Person *person = [Person new];
    [person setName:@"keen"];
    [person setAge:23];
    [person setHeight:1.65];

    person.name = @"keenleung";
    person.age = 24;
    person.height = 1.7;

    NSLog(@"%@ : age = %i, height = %.3f",[person name],[person age],[person height]);

    return 0;
}
