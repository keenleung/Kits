//
//  TGS.m
//  Object-c-Test
//
//  Created by Apple on 16/1/31.
//  Copyright © 2016年 Apple. All rights reserved.
//

#import "TGS.h"

@implementation TGS

-(NSString *)description{
    return [NSString stringWithFormat:@"buyCount = %@, icon = %@, price = %@, title = %@", _buyCount, _icon, _price, _title];
}

@end
