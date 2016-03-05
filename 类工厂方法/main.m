//
//  main.m
//  类工厂方法
//
//  Created by Apple on 15/11/28.
//  Copyright © 2015年 Apple. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

int main(int argc, const char * argv[]) {

    Person *p = [Person person];
    p.age = 24;
    NSLog(@"age = %i",p.age);

    Person *p2 = [Person personWithAge:30];
    NSLog(@"age = %i",p2.age);

    return 0;
}
