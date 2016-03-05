//
//  Person.h
//  Object-c-Test
//
//  Created by Apple on 15/11/25.
//  Copyright © 2015年 Apple. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject
{
    @private
    NSString *_name;
}

@property int age;

-(void)setName:(NSString *)name;

-(NSString *)name;

-(void)Test;

@end
