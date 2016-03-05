//
//  main.m
//  自定义类实现Copy
//
//  Created by Apple on 15/12/13.
//  Copyright © 2015年 Apple. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "Student.h"

int main(int argc, const char * argv[]) {

    Person *p1 = [[Person alloc] init];
    p1.name = @"keen";
    p1.age = 24;

    Person *p2 = [p1 copy];
    NSLog(@"p2 = %@",p2);

    Person *p3 = [p1 mutableCopy];
    NSLog(@"p3 = %@",p3);

    Student *stu1 = [[Student alloc] init];
    stu1.name = @"Andi";
    stu1.age = 25;
    stu1.height = 1.65;

    Student *stu2 = [stu1 copy];
    NSLog(@"stu2 = %@",stu2);

    Student *stu3 = [stu1 mutableCopy];
    NSLog(@"stu3 = %@",stu3);

    return 0;
}
