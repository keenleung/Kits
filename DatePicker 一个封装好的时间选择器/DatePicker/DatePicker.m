//
//  DatePicker.m
//  76-DatePicker
//
//  Created by Apple on 16/3/9.
//  Copyright © 2016年 Apple. All rights reserved.
//

#import "DatePicker.h"

@implementation DatePicker
{
    UIDatePicker *_datePicker;
    UILabel      *_headerView;
    UIButton     *_commitBtn;
    UIButton     *_cancleBtn;
    UIView       *_horizonLine;
    UIView       *_verticalLine;
    
    UIButton     *_maskView;
}

- (instancetype)init{
    
    if (self = [super init]) {
        [self commitInit];
    }
    
    return self;
}

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self commitInit];
    }
    return self;
}

- (void) commitInit{
    
    {
        _maskView = [UIButton buttonWithType:UIButtonTypeCustom];
    }
    
    {
        _appearance = [[DatePickerAppearance alloc] init];
    }
    
    {
        _datePicker = [[UIDatePicker alloc] init];
        [self addSubview:_datePicker];
    }
    
    {
        _headerView = [[UILabel alloc] init];
        [self addSubview:_headerView];
    }
    
    {
        _cancleBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        _cancleBtn.tag = kDatePickerButtonCancle;
        [self addSubview:_cancleBtn];
        [_cancleBtn addTarget:self action:@selector(footViewButtonClick:) forControlEvents:UIControlEventTouchUpInside];
    }
    
    {
        _commitBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        _commitBtn.tag = kDatePickerButtonCommit;
        [self addSubview:_commitBtn];
        [_commitBtn addTarget:self action:@selector(footViewButtonClick:) forControlEvents:UIControlEventTouchUpInside];
    }
    
    {
        _horizonLine = [[UIView alloc] init];
        [self addSubview:_horizonLine];
    }
    
    {
        _verticalLine = [[UIView alloc] init];
        [self addSubview:_verticalLine];
    }
    
    [self reloadAppearance];
    
}

- (void) reloadAppearance{
    
    {
        _maskView.frame = [UIScreen mainScreen].bounds;
        _maskView.backgroundColor = _appearance.maskBackgroundColor;
    }
    
    {
        self.backgroundColor = _appearance.datePickerBackgroundColor;
        if (_appearance.radius > 0) {
            self.layer.cornerRadius = _appearance.radius;
            self.layer.masksToBounds = YES;
        }
    }
    
    {
        _datePicker.datePickerMode = _appearance.datePickerMode;
        _datePicker.minimumDate = _appearance.minimumDate;
        _datePicker.maximumDate = _appearance.maximumDate;
        _datePicker.date = _appearance.currentDate;
        _datePicker.locale = _appearance.localeIdentifier;
    }
    
    {
        _headerView.text = _appearance.headerText;
        _headerView.font = _appearance.headerTextFont;
        _headerView.textColor = _appearance.headerTextColor;
        _headerView.textAlignment = _appearance.headerTextAlignment;
        _headerView.backgroundColor = _appearance.headerBackgroundColor;
    }
    
    {
        _cancleBtn.titleLabel.font = _appearance.cancelBtnFont;
        [_cancleBtn setBackgroundColor:_appearance.cancelBtnBackgroundColor];
        [_cancleBtn setTitle:_appearance.cancelBtnTitle forState:UIControlStateNormal];
        [_cancleBtn setTitleColor:_appearance.cancelBtnTitleColor forState:UIControlStateNormal];
    }
    
    {
        _commitBtn.titleLabel.font = _appearance.commitBtnFont;
        [_commitBtn setBackgroundColor:_appearance.commitBtnBackgroundColor];
        [_commitBtn setTitle:_appearance.commitBtnTitle forState:UIControlStateNormal];
        [_commitBtn setTitleColor:_appearance.commitBtnTitleColor forState:UIControlStateNormal];
    }
    
    {
        _horizonLine.backgroundColor = _appearance.lineColor;
        _verticalLine.backgroundColor = _appearance.lineColor;
    }
    
}


- (void)layoutSubviews{
    
    CGFloat supWith = self.frame.size.width;
    CGFloat supHeight = self.frame.size.height;
    
    {
        _headerView.frame = CGRectMake(0, 0, supWith, _appearance.headerHeight);
    }
    
    {
        _datePicker.frame = CGRectMake(0, _appearance.headerHeight, supWith, supHeight - _appearance.headerHeight - _appearance.buttonHeight);
    }
    
    {
        _cancleBtn.frame = CGRectMake(0 * supWith / 2.0, supHeight - _appearance.buttonHeight, supWith / 2.0, _appearance.buttonHeight);
        _commitBtn.frame = CGRectMake(1 * supWith / 2.0, supHeight - _appearance.buttonHeight, supWith / 2.0, _appearance.buttonHeight);
    }
    
    {
        _horizonLine.frame = CGRectMake(0, supHeight - _appearance.buttonHeight, supWith, _appearance.lineWidth);
        _verticalLine.frame = CGRectMake(supWith / 2.0, supHeight - _appearance.buttonHeight, _appearance.lineWidth, _appearance.buttonHeight);
    }
    
}


/**
 *  按钮点击事件
 *
 *  @param button 按钮类型
 */
- (void) footViewButtonClick: (UIButton *)button{
    
    if ([self.delegate respondsToSelector:@selector(datePickerWithDate:buttonDidClickedInType:)]) {
        [self.delegate datePickerWithDate:_datePicker.date buttonDidClickedInType:button.tag];
    }
    
    [self hidden];
}




- (void)show{
    
    [self reloadAppearance];
    
    [self animationWithView:self duration:0.3];
    
    _maskView.alpha = 0;
    [UIView animateWithDuration:0.25 animations:^{
        _maskView.alpha = 0.5;
    }];
    
    [[UIApplication sharedApplication].keyWindow addSubview:_maskView];
    [[UIApplication sharedApplication].keyWindow addSubview:self];
    self.center = [UIApplication sharedApplication].keyWindow.center;
}


- (void)hidden{
    
    [_maskView removeFromSuperview];
    
    [self removeFromSuperview];
}


- (void)animationWithView:(UIView *)view duration:(CFTimeInterval)duration{
    
    // 帧动画
    CAKeyframeAnimation *animation;
    animation = [CAKeyframeAnimation animationWithKeyPath:@"transform"];
    animation.duration = duration;
    animation.removedOnCompletion = NO;
    
    animation.fillMode = kCAFillModeForwards;
    
    NSMutableArray *values = [NSMutableArray array];
    [values addObject:[NSValue valueWithCATransform3D:CATransform3DMakeScale(0.1, 0.1, 1.0)]];
    [values addObject:[NSValue valueWithCATransform3D:CATransform3DMakeScale(1.2, 1.2, 1.0)]];
    //    [values addObject:[NSValue valueWithCATransform3D:CATransform3DMakeScale(0.9, 0.9, 0.9)]];
    [values addObject:[NSValue valueWithCATransform3D:CATransform3DMakeScale(1.0, 1.0, 1.0)]];
    
    animation.values = values;
    animation.timingFunction = [CAMediaTimingFunction functionWithName:@"easeInEaseOut"];
    
    [self.layer addAnimation:animation forKey:nil];
}

@end
