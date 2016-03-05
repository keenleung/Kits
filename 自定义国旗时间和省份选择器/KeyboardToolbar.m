//
//  KeyboardToolbar.m
//  34-自定义国旗键盘
//
//  Created by Apple on 16/2/20.
//  Copyright © 2016年 Apple. All rights reserved.
//

#import "KeyboardToolbar.h"

@implementation KeyboardToolbar

// 返回 toolbar
+ (instancetype)toolbar{
    return [[[NSBundle mainBundle] loadNibNamed:NSStringFromClass(self) owner:nil options:nil] lastObject];
}

// 点击toolbar 上的按钮
- (IBAction)confirmButtonDidClicked:(UIBarButtonItem *)sender {
    if ([self.kbDelegate respondsToSelector:@selector(buttonItemDidClicked:withToolbar:)]) {
        [self.kbDelegate buttonItemDidClicked:sender withToolbar:self];
    }
}

@end
