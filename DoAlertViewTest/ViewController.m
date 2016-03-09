//
//  ViewController.m
//  DoAlertViewTest
//
//  Created by Apple on 16/3/7.
//  Copyright © 2016年 Apple. All rights reserved.
//

#import "ViewController.h"
#import "DoAlertView.h"

@interface ViewController ()

@property(nonatomic, strong) DoAlertView *vAlert;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];


}

- (IBAction)doAlertButtonDidClicked:(UIButton *)sender{

    _vAlert = [[DoAlertView alloc] init];
    _vAlert.nAnimationType = 4;
    _vAlert.dRound = 2.0;
    _vAlert.iImage = [UIImage imageNamed:@"pic2.jpg"];
    _vAlert.nContentMode = DoContentImage;

    [_vAlert doYesNo:@"Title"
                body:@"Here’s a snippet of code that illustrates how the whole process works"
                 yes:^(DoAlertView *alertView) {

                     NSLog(@"Yeeeeeeeeeeeees!!!!");

                 } no:^(DoAlertView *alertView) {

                     NSLog(@"Noooooooooooooo!!!!");

                 }];

//    [_vAlert doYesNo:@"Here’s a snippet of code that illustrates how the whole process works"
//                 yes:^(DoAlertView *alertView) {
//
//                     NSLog(@"Yeeeeeeeeeeeees!!!!");
//
//                 } no:^(DoAlertView *alertView) {
//
//                     NSLog(@"Noooooooooooooo!!!!");
//
//                 }];
}

@end
