//
//  main.m
//  Block的一个应用
//
//  Created by Apple on 15/11/29.
//  Copyright © 2015年 Apple. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void (^workBlock)();

void goToWrok(workBlock work){
    NSLog(@"起床");
    NSLog(@"刷牙洗脸");
    NSLog(@"吃早餐");
    NSLog(@"开车上班");

    work();

    NSLog(@"开车下班");
    NSLog(@"吃完饭");
    NSLog(@"洗澡");
    NSLog(@"撸代码");
    NSLog(@"听音乐");
    NSLog(@"睡觉");
}

void goToWorkDay1(){
    goToWrok(^{
        NSLog(@"认识新同事");
    });
}

void goToWorkDay2(){
    goToWrok(^{
        NSLog(@"熟悉公司代码");
    });
}

void goToWorkDay3(){
    goToWrok(^{
        NSLog(@"写demo");
    });
}


int main(int argc, const char * argv[]) {
//    goToWorkDay1();
    goToWorkDay2();
//    goToWorkDay3();

    return 0;
}
