//
//  main.m
//  description方法
//
//  Created by Apple on 15/11/23.
//  Copyright © 2015年 Apple. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

int main(int argc, const char * argv[]) {

    Person *p = [[Person alloc] init];
    NSLog(@"%@",p);


    Class p2 = [Person class];
    NSLog(@"%@",p2);
    NSLog(@"%p",p2);
    
    return 0;
}
