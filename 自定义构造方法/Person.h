//
//  Person.h
//  Object-c-Test
//
//  Created by Apple on 15/11/28.
//  Copyright © 2015年 Apple. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject

@property int age;
@property NSString *name;

//自定义构造方法
-(instancetype) initwithAge:(int) age;

-(instancetype) initWithName:(NSString *)name;

-(instancetype) initWithAge:(int) age andName:(NSString *)name;

@end
