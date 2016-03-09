//
//  配置文件
//
//  Created by Apple on 16/3/9.
//  Copyright © 2016年 Apple. All rights reserved.
//

#import <UIKit/UIKit.h>

/**
 *  按钮类型
 */
typedef NS_ENUM(NSInteger, DatePickeerButtonType){
    kDatePickerButtonCancle = 9999,
    kDatePickerButtonCommit
};





/**
 *  配置文件(显示样式)
 */
@interface DatePickerAppearance : NSObject

// 遮罩 mask
@property (nonatomic, strong) UIColor           *maskBackgroundColor;

// 时间选择器 datePicker
@property (nonatomic, strong) UIColor           *datePickerBackgroundColor;
@property (nonatomic, assign) CGFloat           radius;
@property (nonatomic, strong) NSDate            *minimumDate;
@property (nonatomic, strong) NSDate            *maximumDate;
@property (nonatomic, strong, readwrite) NSDate *currentDate;
@property (nonatomic, strong) NSLocale          *localeIdentifier; // 本地化标识, 默认是中国

@property (nonatomic, assign) UIDatePickerMode  datePickerMode;

// 头部 headerView
@property (nonatomic, copy) NSString            *headerText;
@property (nonatomic, strong) UIFont            *headerTextFont;
@property (nonatomic, strong) UIColor           *headerTextColor;
@property (nonatomic, assign) NSTextAlignment   headerTextAlignment;
@property (nonatomic, strong) UIColor           *headerBackgroundColor;
@property (nonatomic, assign) CGFloat           headerHeight;

// 取消按钮 cancelButton
@property (nonatomic, assign) CGFloat           buttonHeight;  //cancelBtn and commitBtn

@property (nonatomic, copy) NSString            *cancelBtnTitle;
@property (nonatomic, strong) UIFont            *cancelBtnFont;
@property (nonatomic, strong) UIColor           *cancelBtnTitleColor;
@property (nonatomic, strong) UIColor           *cancelBtnBackgroundColor;

//提交按钮 commitButton
@property (nonatomic, copy) NSString            *commitBtnTitle;
@property (nonatomic, strong) UIFont            *commitBtnFont;
@property (nonatomic, strong) UIColor           *commitBtnTitleColor;
@property (nonatomic, strong) UIColor           *commitBtnBackgroundColor;

// 分隔线 line
@property (nonatomic, strong) UIColor           *lineColor;
@property (nonatomic, assign) CGFloat           lineWidth;

@end
