//
//  ViewController.m
//  transform 的使用
//
//  Created by Apple on 16/2/25.
//  Copyright © 2016年 Apple. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

// 组件
@property (nonatomic, weak) IBOutlet UIView *actionView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

}

- (IBAction)buttonDidClicked:(UIButton *)sender{
    if (sender.tag == 0) { // 平移
        [UIView animateWithDuration:1.0 animations:^{
            // TransformMake,相对于最原始的形变进行操作
            //self.actionView.transform = CGAffineTransformMakeTranslation(100, 0);

            // 在哪一个形变基础上进行操作
            self.actionView.transform = CGAffineTransformTranslate(self.actionView.transform, 100, 0);
        }];
    }else if (sender.tag == 1){ // 缩放
        [UIView animateWithDuration:1.0 animations:^{
            self.actionView.transform = CGAffineTransformScale(self.actionView.transform, 1.5, 1.5);
        }];
    }else{ // 旋转
        [UIView animateWithDuration:1.0 animations:^{
            self.actionView.transform = CGAffineTransformRotate(self.actionView.transform, M_PI_4); // 旋转45度
        }];
    }
}

@end