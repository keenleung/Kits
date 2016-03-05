//
//  ViewController.m
//  kvo
//
//  Created by Apple on 16/1/27.
//  Copyright © 2016年 Apple. All rights reserved.
//

#import "ViewController.h"
#import "Person.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    Person *person = [[Person alloc] init];
    person.name = @"zhangsan";

    // Observer 观察者
    // KeyPath 键 ---> name
    // options 返回给监听者旧值或者新值
    [person addObserver:self forKeyPath:@"name" options:NSKeyValueObservingOptionNew | NSKeyValueObservingOptionOld context:nil];

    person.name = @"lisi";



    // 释放
    [person removeObserver:self forKeyPath:@"name"];

}
- (IBAction)saveButtonDidClicked:(UIButton *)sender {
}
- (IBAction)saveButtonDidClicked:(UIButton *)sender {
}

- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary<NSString *,id> *)change context:(void *)context{
    NSLog(@"%@-----%@-----%@",keyPath, object, change);
    if([keyPath isEqualToString:@"name"]){
        // ...业务逻辑
    }else if ([keyPath isEqualToString:@"height"]){
        // ...业务逻辑
    }
}

@end
