//
//  Student.h
//  Object-c-Test
//
//  Created by Apple on 15/12/3.
//  Copyright © 2015年 Apple. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Student;

//通过代理来找房子，所以首先定义一个协议
@protocol StudentProtocol <NSObject>

-(void)studentFindHourse:(Student *)student;

@end


@interface Student : NSObject

//代理
@property(nonatomic, strong) id<StudentProtocol> delegate;

//找房子
-(void)findHourse;

@end
