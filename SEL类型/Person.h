//
//  Person.h
//  Object-c-Test
//
//  Created by Apple on 15/11/29.
//  Copyright © 2015年 Apple. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject

@property int age;

//添加一个类方法
+ (void)test;

//添加对象方法
- (void)demo;

- (void)demoWithNumber:(NSString *)Number;

- (void)demoWithNumber:(NSString *)Number andName:(NSString *)Name;

- (void)makeObject:(id)obj andSel:(SEL)sel;

@end
