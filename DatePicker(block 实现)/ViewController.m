//
//  ViewController.m
//  DatePicker(block 实现)
//
//  Created by Apple on 16/3/9.
//  Copyright © 2016年 Apple. All rights reserved.
//

#import "ViewController.h"
#import "DatePickerInBlock.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}


- (IBAction)dateButtonDidClicked:(UIButton *)sender{
    
    // x,y 值无效，默认是居中的
    DatePickerInBlock *picker = [[DatePickerInBlock alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width - 40, 300)];
    
    //配置中心，详情见KSDatePikcerApperance
    //picker.appearance.radius = 5
    picker.completion = ^void(DatePickerInBlock *datePicker, NSDate *currentDate, DatePickeerButtonType buttonType){
        if (buttonType == kDatePickerButtonCommit) {
            
            NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
            [formatter setDateFormat:@"yyyy-MM-dd"];
            
            [sender setTitle:[formatter stringFromDate:currentDate] forState:UIControlStateNormal];
        }
    };
    
    
    // 显示
    [picker show];
}


@end
