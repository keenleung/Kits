//
//  FlagTextField.m
//  34-自定义国旗键盘
//
//  Created by Apple on 16/2/19.
//  Copyright © 2016年 Apple. All rights reserved.
//

#import "FlagTextField.h"
#import "Country.h"
#import "FlagView.h"
#import "KeyboardToolbar.h"

@interface FlagTextField()<UIPickerViewDataSource, UIPickerViewDelegate, KeyboardToolbarDelegate>

// 数据
@property (nonatomic, strong) NSArray *countries;

// 控件
@property (nonatomic, weak) UIPickerView *pickerView;

// 记录选择的是哪一行
@property (nonatomic, assign) NSInteger currentIndex;

@end

@implementation FlagTextField

// 数据懒加载
- (NSArray *)countries{
    if (!_countries) {
        _countries = [Country countryList];
    }
    return _countries;
}

// xib 加载完毕后调用
- (void)awakeFromNib{
    [super awakeFromNib];

    // 初始化
    [self setUp];
}

// 调用 init 方法的时候调用
- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // 初始化
        [self setUp];
    }
    return self;
}

// 初始化
- (void) setUp{
    // 创建一个 pickerView, 使得点击的时候弹出这个 pickerView
    UIPickerView *pickerView = [[UIPickerView alloc] init];

    // 设置 pickerView 的数据源和代理
    pickerView.dataSource = self;
    pickerView.delegate = self;

    // 点击 textField, 弹出 pickerView
    self.inputView = pickerView;

    self.pickerView = pickerView;

    // 设置 textField 的 toolbar
    KeyboardToolbar *toolbar = [KeyboardToolbar toolbar];
    self.inputAccessoryView = toolbar;
    toolbar.kbDelegate = self;
}

#pragma pickerView 数据源方法
- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView{
    return 1;
}

- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component{
    return self.countries.count;
}

#pragma pickerView 代理方法
- (UIView *)pickerView:(UIPickerView *)pickerView viewForRow:(NSInteger)row forComponent:(NSInteger)component reusingView:(UIView *)view{

    FlagView *flagView = [FlagView flagView];
    CGFloat flagViewW = [UIScreen mainScreen].bounds.size.width;
    CGFloat flagViewH = 70;
    flagView.frame = CGRectMake(0, 0, flagViewW, flagViewH);

    // 给子控件赋值
    flagView.country = self.countries[row];

    return flagView;
}

// 设置 pickerView 每行的高度
- (CGFloat)pickerView:(UIPickerView *)pickerView rowHeightForComponent:(NSInteger)component{
    return 70;
}

// 选择某一个
- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component{
    Country *country = self.countries[row];
    self.text = country.name;

    // 记录当前选择第几行
    self.currentIndex = row;
}

#pragma mark - 自定义协议中的方法
-(void)initText{
    [self pickerView:self.pickerView didSelectRow:self.currentIndex inComponent:0];
}

#pragma mark - toolbar的代理方法
- (void)buttonItemDidClicked:(UIBarButtonItem *)buttonItem withToolbar:(UIToolbar *)toolbar{
    if (buttonItem.tag == 0) {
        [self endEditing:YES];
    }

    // 恢复控制器的 view 的位置
    self.superview.transform = CGAffineTransformIdentity;
}

@end
