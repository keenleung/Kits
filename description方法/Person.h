//
//  Person.h
//  Object-c-Test
//
//  Created by Apple on 15/11/23.
//  Copyright © 2015年 Apple. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject
{
    int _age;
    NSString *_name;
}
-(void)setAge:(int)age;
-(void)setName:(NSString *)name;

-(int)age;
-(NSString *)name;

@end
