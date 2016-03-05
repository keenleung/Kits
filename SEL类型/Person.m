//
//  Person.m
//  Object-c-Test
//
//  Created by Apple on 15/11/29.
//  Copyright © 2015年 Apple. All rights reserved.
//

#import "Person.h"

@implementation Person

//实现自定义类方法
+(void)test{
    NSLog(@"test");
}

//实现对象方法
-(void)demo{
    NSLog(@"demo");
}

-(void)demoWithNumber:(NSString *)Number{
    NSLog(@"demoWithNumber : number = %@",Number);
}

-(void)demoWithNumber:(NSString *)Number andName:(NSString *)Name{
    NSLog(@"demoWithNumber : number = %@, and name = %@",Number,Name);
}

-(void)makeObject:(id)obj andSel:(SEL)sel{
    [obj performSelector:sel];
}
@end
