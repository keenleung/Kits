//
//  main.m
//  自定义构造方法
//
//  Created by Apple on 15/11/28.
//  Copyright © 2015年 Apple. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

int main(int argc, const char * argv[]) {

    Person *p1 = [[Person alloc] init];
    NSLog(@"p1 = %@",p1);

    Person *p2 = [[Person alloc] initwithAge:25];
    NSLog(@"p2 = %@",p2);

    Person *p3 = [[Person alloc] initWithName:@"keen"];
    NSLog(@"p3 = %@",p3);

    Person *p4 = [[Person alloc] initWithAge:27 andName:@"andi"];
    NSLog(@"p4 = %@",p4);

    return 0;
}
