//
//  ViewController.m
//  自定义国旗时间和省份选择器
//
//  Created by Apple on 16/3/5.
//  Copyright © 2016年 Apple. All rights reserved.
//

#import "ViewController.h"
#import "CustomTextFieldProtocol.h"

@interface ViewController ()<UITextFieldDelegate>

@property (weak, nonatomic) IBOutlet UITextField *countryTextField;
@property (weak, nonatomic) IBOutlet UITextField *birthdarTextField;
@property (weak, nonatomic) IBOutlet UITextField *cityTextField;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];


    self.countryTextField.delegate = self;
    self.birthdarTextField.delegate = self;
    self.cityTextField.delegate = self;
}


// 控制 textField 不能进行修改
- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string{
    return NO;
}

// 第一次点击后立即有值
// pickerVie 可能会遮挡住 textField, 需要额外处理
- (void)textFieldDidBeginEditing: (id)textField{ // 设置为 id 类型,即在运行时才去确定真实类型
    if ([textField respondsToSelector:@selector(initText)]) {
        [textField initText];
    }

    // 以下的操作,防止 pickerView 选择的时候,遮挡 textField
    UITextField *textF = textField;
    CGFloat toolbarH = textF.inputAccessoryView.bounds.size.height;
    CGFloat pickerViewH = textF.inputView.bounds.size.height;
    CGFloat accessoryY = [UIScreen mainScreen].bounds.size.height - toolbarH - pickerViewH;
    CGFloat textFieldY = textF.frame.origin.y + textF.bounds.size.height;

    CGFloat space = accessoryY - textFieldY;
    if (space<0) {
        // 移动控制器的 view
        self.view.transform = CGAffineTransformMakeTranslation(0, space -20);
    }
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end
