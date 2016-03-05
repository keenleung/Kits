//
//  FlagView.m
//  34-自定义国旗键盘
//
//  Created by Apple on 16/2/19.
//  Copyright © 2016年 Apple. All rights reserved.
//

#import "FlagView.h"
#import "Country.h"

@implementation FlagView

// 获取 xib
+ (instancetype)flagView{
    return [[[NSBundle mainBundle] loadNibNamed:NSStringFromClass(self) owner:nil options:nil] lastObject];
}

// 给子控件赋值
- (void)setCountry:(Country *)country{
    _country = country;

    self.nameLabel.text = country.name;
    self.iconImageView.image = country.icon;
}

@end
