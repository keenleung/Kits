//
//  main.m
//  instancetype和id的区别
//
//  Created by Apple on 15/11/28.
//  Copyright © 2015年 Apple. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

int main(int argc, const char * argv[]) {

    Person *p = [[Person alloc] init];
    NSLog(@"%@",p);

    return 0;
}
