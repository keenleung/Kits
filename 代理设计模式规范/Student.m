//
//  Student.m
//  Object-c-Test
//
//  Created by Apple on 15/12/3.
//  Copyright © 2015年 Apple. All rights reserved.
//

#import "Student.h"

@implementation Student

//学生通过代理找房子
-(void)findHourse{
    NSLog(@"学生想找房子");
    if ([self.delegate respondsToSelector:@selector(studentFindHourse:)]) {
        [self.delegate studentFindHourse:self];
    }
}

@end
