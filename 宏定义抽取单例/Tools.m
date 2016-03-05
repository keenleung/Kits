//
//  Tools.m
//  Object-c-Test
//
//  Created by Apple on 15/12/13.
//  Copyright © 2015年 Apple. All rights reserved.
//

#import "Tools.h"

@implementation Tools

/*
+(instancetype)shareTools{
    Tools *instance = [[Tools alloc] init];
    return instance;
}

static  Tools *_instance = nil;
+(instancetype)allocWithZone:(struct _NSZone *)zone{

    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _instance = [[super allocWithZone:zone] init];
    });
    return _instance;
}

- (id)copyWithZone:(nullable NSZone *)zone{
    return _instance;
}

-(id)mutableCopyWithZone:(NSZone *)zone{
    return _instance;
}

-(oneway void)release{
}

-(instancetype)retain{
    return _instance;
}

-(NSUInteger)retainCount{
    return MAXFLOAT;
}
 */
implementation(Tools)

@end
