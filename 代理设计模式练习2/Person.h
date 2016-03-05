//
//  Person.h
//  Object-c-Test
//
//  Created by Apple on 15/12/3.
//  Copyright © 2015年 Apple. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Person;

@protocol PersonProtocol <NSObject>

-(void)personWantToFindApartment:(Person *)person;

@end

//Person要找房子
@interface Person : NSObject

@property (nonatomic, assign) NSString *name;

//找房子的代理
@property (nonatomic, strong) id<PersonProtocol>delegate;

//构造方法
-(instancetype)initWithName:(NSString *)name withDelegate:(id<PersonProtocol>)delegate;

//找房子
-(void)wantToFindApartment;

@end
