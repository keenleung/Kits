//
//  main.m
//  new实现原理
//
//  Created by Apple on 15/11/26.
//  Copyright © 2015年 Apple. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

int main(int argc, const char * argv[]) {

//    Person *p1 = [Person alloc];
//    Person *p2 = [p1 init];
//    NSLog(@"p1 = %p, p2 = %p",p1,p2);
    Person *p = [[Person alloc] init];
    NSLog(@"%i",p.age);
    return 0;
}
