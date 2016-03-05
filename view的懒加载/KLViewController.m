//
//  KLViewController.m
//  Object-c-Test
//
//  Created by Apple on 16/2/19.
//  Copyright © 2016年 Apple. All rights reserved.
//

#import "KLViewController.h"
#import "KLView.h"

@interface KLViewController ()

@end

@implementation KLViewController

// 控制器 view 的懒加载实现的方式如下:(用以下代码,程序也能正常跑起来)
//- (UIView *)view{
//    if (![self valueForKeyPath:@"_view"]) {
//        [self loadView];
//        [self viewDidLoad];
//    }
//    return [self valueForKeyPath:@"_view"];
//}

-(void)loadView{
    KLView *view = [[KLView alloc] initWithFrame:[UIScreen mainScreen].bounds];

    // 注意:在控制器的 view 还没有确定下来之前,不能对控制器的 view 进行访问,不然,会形成死循环
    // view 为 nil的时候, self.view 会继续调用 view 的懒加载,即再次会进入 loadView 方法,形成死循环
    //KLView *view = [[KLView alloc] initWithFrame:self.view.bounds];

    view.backgroundColor = [UIColor blueColor];

    // 确定控制器的 view
    self.view = view;

}

- (void)viewDidLoad {
    [super viewDidLoad];

    self.view.backgroundColor = [UIColor redColor];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];

}

@end
