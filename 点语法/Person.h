//
//  Person.h
//  Object-c-Test
//
//  Created by Apple on 15/11/22.
//  Copyright © 2015年 Apple. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject
{
    int _age;
    double _height;
    NSString *_name;
}
-(void)setAge:(int)age;
-(void)setHeight:(double)height;
-(void)setName:(NSString *)name;

-(int)age;
-(double)height;
-(NSString *)name;
@end
