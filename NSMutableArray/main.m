//
//  main.m
//  NSMutableArray
//
//  Created by Apple on 15/12/9.
//  Copyright © 2015年 Apple. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {

    // 情况1：创建。创建一个空数组
    NSMutableArray *arrM = [NSMutableArray array];
    NSLog(@"情况1")
    NSLog(@"arrM = %@",arrM);

    //情况2：添加。
    NSLog(@"情况2");
    [arrM addObject:@"keen"];
    NSLog(@"arrM = %@",arrM);
    [arrM addObjectsFromArray:@[@"andi",@"phoenix"]];
    NSLog(@"arrM = %@",arrM);
    [arrM addObject:@[@"ZS",@"LS"]];
    NSLog(@"arrM = %@",arrM);

    //情况3：插入。
    NSLog(@"情况3")
    [arrM insertObject:@"WangWu" atIndex:1];
    NSLog(@"arrM = %@",arrM);
    NSIndexSet *set = [NSIndexSet indexSetWithIndexesInRange:NSMakeRange(2, 2)];
    [arrM insertObjects:@[@"A", @"B"] atIndexes:set];
    NSLog(@"arrM = %@",arrM);

    //情况4：删除。
    NSLog(@"情况4");
    [arrM removeObjectAtIndex:1];
    NSLog(@"arrM = %@",arrM);
    [arrM removeLastObject];
    NSLog(@"arrM = %@",arrM);
    [arrM removeObject:@"A"];
    NSLog(@"arrM = %@",arrM);

    //情况5：替换
    NSLog(@"情况5");
    [arrM replaceObjectAtIndex:1 withObject:@"A"];
    NSLog(@"arrM = %@",arrM);

    //情况6：获取
    NSLog(@"情况6");
    NSLog(@"%@",[arrM objectAtIndex:2]);
    NSLog(@"%@",arrM[2]);

    //情况7
    //注意：不能通过@[]来创建可变数组，因为@[]创建出来的是不可变数组。
    //     如果把一个不可变数组当做一个可变数组来使用，会引发运行时错误。
    NSMutableArray *newArrM = @[@"keen",@"andi"];
    //[newArrM addObject:@"phoenix"]; //运行时会报错！

    return 0;
}
