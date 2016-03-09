//
//  时间选择器
//
//  Created by Apple on 16/3/9.
//  Copyright © 2016年 Apple. All rights reserved.
//

#import "DatePickerAppearance.h"
@class DatePicker;

/**
 *  协议
 */
@protocol DatePickerDelegae <NSObject>

/**
 *  时间选择器代理方法
 *
 *  @param selectDate 选择的时间
 *  @param buttonType 按钮的类型
 */
- (void) datePickerWithDate: (NSDate *)selectDate buttonDidClickedInType: (DatePickeerButtonType)buttonType;

@end



@interface DatePicker : UIView

/**
 *  样式对象
 */
@property (nonatomic, strong, readonly) DatePickerAppearance *appearance;



/**
 *  重新加载样式
 */
- (void) reloadAppearance;

/**
 *  显示
 */
- (void) show;

/**
 *  隐藏
 */
- (void) hidden;


/**
 *  代理
 */
@property (nonatomic, weak) id<DatePickerDelegae> delegate;

@end
