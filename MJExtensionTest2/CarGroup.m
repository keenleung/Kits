//
//  CarGroup.m
//  Object-c-Test
//
//  Created by Apple on 16/1/31.
//  Copyright © 2016年 Apple. All rights reserved.
//

#import "CarGroup.h"

@implementation CarGroup

-(NSString *)description{
    return [NSString stringWithFormat:@"group: cars.count = %li, title = %@", _cars.count, _title];
}

@end
