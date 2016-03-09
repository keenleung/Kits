//
//  DatePickerAppearance.m
//  76-DatePicker
//
//  Created by Apple on 16/3/9.
//  Copyright © 2016年 Apple. All rights reserved.
//

#import "DatePickerAppearance.h"

@implementation DatePickerAppearance

- (instancetype)init{
    
    if (self = [super init]) {
        
        [self deafaultValue];
        
    }
    
    return self;
}

- (void) deafaultValue{
    
    _maskBackgroundColor = [UIColor blackColor];
    
    _datePickerBackgroundColor = [UIColor whiteColor];
    _radius = 5.0f;
    _currentDate = [NSDate date];
    _datePickerMode = UIDatePickerModeDate;
    _localeIdentifier = [[NSLocale alloc] initWithLocaleIdentifier:@"zh"];// 中国的本地化标识是: zh
    
    _headerText = @"请选择日期";
    _headerTextColor = [UIColor whiteColor];
    _headerTextFont = [UIFont systemFontOfSize:15];
    _headerBackgroundColor = [UIColor colorWithRed:45/255.0 green:54/255.0 blue:62/255.0 alpha:1];
    _headerTextAlignment = NSTextAlignmentCenter;
    _headerHeight = 44.0;
    
    _buttonHeight = 44.0;
    
    _commitBtnTitle = @"确定";
    _commitBtnFont = [UIFont systemFontOfSize:15];
    _commitBtnTitleColor = [UIColor colorWithRed: 228/255. green:0/255. blue:127/255. alpha:1];
    _commitBtnBackgroundColor = [UIColor whiteColor];
    
    _cancelBtnTitle = @"取消";
    _cancelBtnFont = [UIFont systemFontOfSize:15];
    _cancelBtnTitleColor = [UIColor lightGrayColor];
    _cancelBtnBackgroundColor = [UIColor whiteColor];
    
    _lineColor = [UIColor colorWithRed:205/255. green:205/255. blue:205/255. alpha:1.];
    _lineWidth = 0.5;
    
}

@end
