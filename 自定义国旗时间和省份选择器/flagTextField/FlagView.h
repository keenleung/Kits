//
//  FlagView.h
//  34-自定义国旗键盘
//
//  Created by Apple on 16/2/19.
//  Copyright © 2016年 Apple. All rights reserved.
//

#import <UIKit/UIKit.h>
@class Country;

@interface FlagView : UIView

// 组件
@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
@property (weak, nonatomic) IBOutlet UIImageView *iconImageView;

// 数据
@property (nonatomic, strong) Country *country;

// 方法
+ (instancetype) flagView;


@end
