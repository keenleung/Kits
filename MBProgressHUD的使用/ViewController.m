//
//  ViewController.m
//  MBProgressHUD的使用
//
//  Created by Apple on 16/3/4.
//  Copyright © 2016年 Apple. All rights reserved.
//

#import "ViewController.h"
#import "MBProgressHUD+Extension.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

}

- (IBAction)showButtonDidCliced:(UIButton *)sender{

    [MBProgressHUD showMessage:@"信息" toView: self.view];

    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [MBProgressHUD hideHUDForView:self.view animated:YES];
    });
}

- (IBAction)errorButtonDidClicked:(UIButton *)sender{

    [MBProgressHUD showError:@"Error" toView:self.view];

}
@end
