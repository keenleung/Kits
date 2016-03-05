//
//  Car.m
//  Object-c-Test
//
//  Created by Apple on 16/1/31.
//  Copyright © 2016年 Apple. All rights reserved.
//

#import "Car.h"

@implementation Car

-(NSString *)description{
    return [NSString stringWithFormat:@"car: icon = %@, name = %@", _icon, _name];
}

@end
