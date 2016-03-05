//
//  Person.h
//  Object-c-Test
//
//  Created by Apple on 16/1/10.
//  Copyright © 2016年 Apple. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject

@property (nonatomic, copy) NSString *name;

-(void) buyMilk: (NSNotification *)noti;

@end
