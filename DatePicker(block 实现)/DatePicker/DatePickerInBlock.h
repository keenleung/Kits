//
//  时间选择器
//
//  Created by Apple on 16/3/9.
//  Copyright © 2016年 Apple. All rights reserved.
//

#import "DatePickerAppearance.h"
@class DatePickerInBlock;

typedef void(^DatePickerResult)(DatePickerInBlock *datePicker, NSDate *currentDate, DatePickeerButtonType buttonType);

@interface DatePickerInBlock: UIView

/**
 *  样式对象
 */
@property (nonatomic, strong, readonly) DatePickerAppearance *appearance;


/**
 *  执行的代码段
 */
@property (nonatomic, copy) DatePickerResult completion;


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


@end
