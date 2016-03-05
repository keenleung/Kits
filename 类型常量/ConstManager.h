//
//  ConstManager.h
//  Object-c-Test
//
//  Created by Apple on 16/1/29.
//  Copyright © 2016年 Apple. All rights reserved.
//

#import <Foundation/Foundation.h>

extern NSString *const _ApplicationName;
extern const NSString *_ApplicationName2;
static NSString *const _UserName;

@interface ConstManager : NSObject

- (void)showName;

@end