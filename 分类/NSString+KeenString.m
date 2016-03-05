//
//  NSString+KeenString.m
//  Object-c-Test
//
//  Created by Apple on 15/11/25.
//  Copyright © 2015年 Apple. All rights reserved.
//

#import "NSString+KeenString.h"

@implementation NSString (KeenString)
-(NSInteger)Test{
    return [self length];
}

-(int)countNumber{
    int count = 0;
    for (int i = 0; i < self.length; i++) {
        unichar c = [self characterAtIndex:i];
        if (c >= '0' && c <= '9') {
            count++;
        }
    }
    return count;
}
@end
