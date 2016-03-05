//
//  KeyboardToolbar.h
//  34-自定义国旗键盘
//
//  Created by Apple on 16/2/20.
//  Copyright © 2016年 Apple. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol KeyboardToolbarDelegate <NSObject>

- (void) buttonItemDidClicked: (UIBarButtonItem *)buttonItem withToolbar: (UIToolbar *)toolbar;

@end

@interface KeyboardToolbar : UIToolbar

// 组件
@property (weak, nonatomic) IBOutlet UIBarButtonItem *confirmButton;

// 方法
+ (instancetype) toolbar;

// 代理
@property (nonatomic, weak) id<KeyboardToolbarDelegate> kbDelegate;

@end
