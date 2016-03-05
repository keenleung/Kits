//
//  CityTextField.m
//  34-自定义国旗键盘
//
//  Created by Apple on 16/2/20.
//  Copyright © 2016年 Apple. All rights reserved.
//

#import "CityTextField.h"
#import "Province.h"
#import "KeyboardToolbar.h"

@interface CityTextField()<UIPickerViewDataSource, UIPickerViewDelegate, KeyboardToolbarDelegate>

// 数据
@property (nonatomic, strong) NSArray *provinces;

// 控件
@property (nonatomic, weak) UIPickerView *pickerView;

// 记录当前选择的省份的下标
@property (nonatomic, assign) NSInteger currentProvinceIndex;

@end

@implementation CityTextField

// 数据懒加载
- (NSArray *)provinces{
    if (!_provinces) {
        _provinces = [Province provinceList];
    }
    return _provinces;
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
    UIPickerView *pickerView = [[UIPickerView alloc] init];

    // 设置数据源和代理
    pickerView.delegate = self;
    pickerView.dataSource = self;

    self.inputView = pickerView;

    self.pickerView = pickerView;

    // 设置 textField 的 toolbar
    KeyboardToolbar *toolbar = [KeyboardToolbar toolbar];
    self.inputAccessoryView = toolbar;
    toolbar.kbDelegate = self;
}

#pragma mark - pickerView 数据源方法
- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView{
    return 2;
}

- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component{
    if (component == 0) {
        return self.provinces.count;
    }else{
        // 确定当前选择的省份
        Province *province = self.provinces[self.currentProvinceIndex];
        return province.cities.count;
    }
}

- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component{
    if (component == 0) {
        Province *provicne = self.provinces[row];
        return provicne.name;
    }else{
        // 确定当前选择的省份
        Province *province = self.provinces[self.currentProvinceIndex];
        // 返回城市列表
        return province.cities[row];
    }
}

#pragma mark - pickerView 代理方法
// 确定当前选择的是哪一个省份
- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component{
    if (component == 0) {
        self.currentProvinceIndex = row;

        // 刷新 pickerView
        [pickerView reloadAllComponents];
        // 让第二列默认选择第一个
        [pickerView selectRow:0 inComponent:1 animated:YES];// 只要不调用这个方法,之前选择的是什么,再次显示的时候, pickerView 就显示什么
    }

    // 把选择的填进 textField 中
    // 当前选中的省份
    Province *province = self.provinces[self.currentProvinceIndex];
    // 第2列选中的是哪一行
    NSInteger cityIndex = [pickerView selectedRowInComponent:1];
    // 设置 textField 的值
    self.text = [NSString stringWithFormat:@"%@-%@", province.name, province.cities[cityIndex]];
}

#pragma mark - 自定义协议中的方法
- (void)initText{
    [self pickerView:self.pickerView didSelectRow:0 inComponent:1];
}

#pragma mark - toolbar代理方法
-(void)buttonItemDidClicked:(UIBarButtonItem *)buttonItem withToolbar:(UIToolbar *)toolbar{
    if (buttonItem.tag == 0){
        // 结束编辑
        [self endEditing:YES];
    }

    // 恢复控制器的 view 的位置
    self.superview.transform = CGAffineTransformIdentity;
}

@end
