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

//类工厂方法
+(instancetype)person;
+(instancetype)personWithAge:(int)age;

@end
