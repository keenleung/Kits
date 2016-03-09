//
//  ViewController.m
//  DatePicker 一个封装好的时间选择器
//
//  Created by Apple on 16/3/9.
//  Copyright © 2016年 Apple. All rights reserved.
//

#import "ViewController.h"
#import "DatePicker.h"

@interface ViewController ()<DatePickerDelegae>

@property (nonatomic, weak) IBOutlet UIButton *dateButton;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (IBAction)showDate:(UIButton *)sender{
    
    // x,y 值无效，默认是居中的
    DatePicker *picker = [[DatePicker alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width - 40, 300)];
    
    //配置中心，详情见KSDatePikcerApperance
    //picker.appearance.radius = 5;
    
    // 设置代理
    picker.delegate = self;
    
    // 显示
    [picker show];
    
}

#pragma mark - 实现协议方法
- (void)datePickerWithDate:(NSDate *)selectDate buttonDidClickedInType:(DatePickeerButtonType)buttonType{
    
    if (buttonType == kDatePickerButtonCommit) {
        
        NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
        [formatter setDateFormat:@"yyyy-MM-dd"];
        [self.dateButton setTitle:[formatter stringFromDate:selectDate] forState:UIControlStateNormal];
    }
}

@end
