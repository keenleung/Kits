//
//  main.m
//  类的启动过程
//
//  Created by Apple on 15/11/29.
//  Copyright © 2015年 Apple. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

int main(int argc, const char * argv[]) {

    NSLog(@"Hello world.");
    Person *person1 = [[Person alloc] init];
    Person *person2 = [[Person alloc] init];
    
    return 0;
}
