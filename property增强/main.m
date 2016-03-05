//
//  main.m
//  property增强
//
//  Created by Apple on 15/11/25.
//  Copyright © 2015年 Apple. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

int main(int argc, const char * argv[]) {

    Person *p = [[Person alloc] init];
    //[p setAge: 23];
    //NSLog(@"age = %i",[p age]);
    //NSLog(@"_age = %i, age = %i",p->_age,p->age);
    [p age_set:23];
    [p setMarried:false];
    NSLog(@"age = %i,%i",[p age_get],[p isMarred]);
    if ([p isMarred]) {
        NSLog(@"已婚");
    }
    else{
        NSLog(@"未婚");
    }
    return 0;
}
