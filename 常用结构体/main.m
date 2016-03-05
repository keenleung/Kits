//
//  main.m
//  常用结构体
//
//  Created by Apple on 15/12/9.
//  Copyright © 2015年 Apple. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {

    //注意：CGPoint == NSPoint, CGSize == NSSize, CGRect == NSRect
    //     苹果官方推荐：使用CGXxx

    // 1.保存坐标
    CGPoint point = NSMakePoint(10, 20);
    NSLog(@"保存坐标");
    NSLog(@"(x , y) = (%.1f, %.1f)",point.x,point.y);

    // 2.保存尺寸
    CGSize size = NSMakeSize(100, 80);
    NSLog(@"保存尺寸");
    NSLog(@"width = %.f, height = %.f",size.width,size.height);

    // 3.保存坐标和尺寸
    CGRect rect = NSMakeRect(10, 20, 100, 80);
    NSLog(@"保存坐标和尺寸");
    NSLog(@"(x, y) = (%.f, %.f), width = %.f, height = %.f",rect.origin.x,rect.origin.y,rect.size.width,rect.size.height);

    return 0;
}
