//
//  ViewController.m
//  iOS-Test
//
//  Created by Apple on 16/2/4.
//  Copyright © 2016年 Apple. All rights reserved.
//

#import "ViewController.h"
#import "Person.h"

@interface ViewController ()

@property (nonatomic, strong) NSMutableArray *arrM;

@end

@implementation ViewController

- (NSMutableArray *)arrM{
    if (!_arrM) {
        _arrM = [NSMutableArray array];
    }
    return _arrM;
}

- (void)viewDidLoad {
    [super viewDidLoad];

    for (int i = 0; i<5 ; i++) {
        Person *p = [[Person alloc] init];
        p.age = i + 1;
        [self.arrM addObject:p];
    }
//    NSLog(@"arrM.count = %zd", self.arrM.count);
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    
}

@end
