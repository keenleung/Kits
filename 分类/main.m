//
//  main.m
//  分类
//
//  Created by Apple on 15/11/25.
//  Copyright © 2015年 Apple. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSString+KeenString.h"
#import "Person+ExtendClass.h"

int main(int argc, const char * argv[]) {

//    NSString *string = @"This is a test.";
//    NSLog(@"%@",string);
//    NSLog(@"%lu",[string Test]);

    /*
    Person *p = [[Person alloc] init];
    p.name = @"keen";
    p.age = 23;
//    [p setWeight:56];
    [p Test];
     */
    NSString *str = @"da1f2d3f4a5d6f7a8d";
    NSLog(@"number = %i",[str countNumber]);

    return 0;
}
