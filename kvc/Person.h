//
//  Person.h
//  Object-c-Test
//
//  Created by Apple on 15/12/26.
//  Copyright © 2015年 Apple. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Dog.h"
@class Book;

@interface Person : NSObject

@property (nonatomic, copy) NSString *name;
@property (nonatomic, assign) int age;

@property (nonatomic, strong) Book *book;

@property (nonatomic, strong)NSArray *books;

@property (nonatomic, assign) float height;

@property (nonatomic, strong) Dog *dog;

@end
