//
//  CustomTextFieldProtocol.h
//  34-自定义国旗键盘
//
//  Created by Apple on 16/2/20.
//  Copyright © 2016年 Apple. All rights reserved.
//

#import <Foundation/Foundation.h>

// 自定义TextField协议
@protocol CustomTextFieldProtocol <NSObject>

@optional
- (void) initText;// 点击后 textField 显示的值

@end
