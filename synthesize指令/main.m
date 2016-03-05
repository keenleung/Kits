//
//  main.m
//  synthesize指令
//
//  Created by Apple on 15/11/24.
//  Copyright © 2015年 Apple. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

int main(int argc, const char * argv[]) {

    Person *p = [[Person alloc] init];
    [p setAge:23];
    NSLog(@"_age = %i, age = %i",p->_age,p->age);

    return 0;
}

