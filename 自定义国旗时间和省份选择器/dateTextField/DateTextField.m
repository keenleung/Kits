//
//  DataTextField.m
//  34-自定义国旗键盘
//
//  Created by Apple on 16/2/20.
//  Copyright © 2016年 Apple. All rights reserved.
//

#import "DateTextField.h"
#import "KeyboardToolbar.h"

@interface DateTextField()<KeyboardToolbarDelegate>

// 控件
@property (nonatomic, weak) UIDatePicker *datePicker;

@end

@implementation DateTextField

- (void)awakeFromNib{
    [super awakeFromNib];

    // 初始化
    [self setUp];
}

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // 初始化
        [self setUp];
    }
    return self;
}

/**
 *  初始化
 */
- (void) setUp{
    UIDatePicker *datePicker = [[UIDatePicker alloc] init];

    // 修改日期模式
    datePicker.datePickerMode = UIDatePickerModeDate;
    // 设置地区
    datePicker.locale = [NSLocale localeWithLocaleIdentifier:@"zh"];

    // 监听 datePicker
    [datePicker addTarget:self action:@selector(dateChange:) forControlEvents:UIControlEventValueChanged];

    self.inputView = datePicker;

    self.datePicker = datePicker;

    // 设置 textField 的 toolbar
    KeyboardToolbar *toolbar = [KeyboardToolbar toolbar];
    self.inputAccessoryView = toolbar;
    toolbar.kbDelegate = self;
}

- (void) dateChange: (UIDatePicker *)datePicker{
    // 时间格式化对象
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    formatter.dateFormat = @"yyyy-MM-dd";

    // 格式化时间
    NSString *selectDateString = [formatter stringFromDate:datePicker.date];

    // 修改 textField 的值
    self.text = selectDateString;
}

#pragma mark - 自定义协议中的方法
- (void)initText{
    [self dateChange:self.datePicker];
}

#pragma mark - toolbar 的代理方法
- (void)buttonItemDidClicked:(UIBarButtonItem *)buttonItem withToolbar:(UIToolbar *)toolbar{
    if (buttonItem.tag == 0) {
        [self endEditing:YES];
    }

    // 恢复控制器的 view 的位置
    self.superview.transform = CGAffineTransformIdentity;
}

@end
