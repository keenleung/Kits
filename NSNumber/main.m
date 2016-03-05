//
//  main.m
//  NSNumber
//
//  Created by Apple on 15/12/9.
//  Copyright © 2015年 Apple. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {

    int age = 23;
    double num = 1.65;
    bool flag = true;

    // 情况1：将基本数据类型转为对象类型。
    NSNumber *ageNS = [NSNumber numberWithInt:age];
    NSNumber *numNS = [NSNumber numberWithDouble:num];
    NSNumber *flagNS = [NSNumber numberWithBool:flag];

    NSArray *arr = @[ageNS, numNS, flagNS];
    NSLog(@"情况1")
    NSLog(@"arr = %@",arr);
    NSLog(@"ageNS = %@",ageNS);
    NSLog(@"numNS = %@",numNS);
    NSLog(@"flagNS = %@",flagNS);

    // 情况2：将对象类型转换为基本数据类型
    int newAge = [ageNS intValue];
    double newNum = [numNS doubleValue];
    bool newFlag = [flagNS boolValue];
    NSLog(@"情况2");
    NSLog(@"newAge = %i, newNum = %.2f, newFlag = %i",newAge,newNum,newFlag);

    // 情况3：基本数据类型转对象类型的简写
    ageNS = @(newAge);
    numNS = @(newNum);
    flagNS = @(newFlag);
    NSLog(@"情况3");
    NSLog(@"ageNS = %@, numNS = %@, flagNS = %@",ageNS,numNS,flagNS);
    ageNS = @24;
    numNS = @1.66;
    flagNS = @true;
    NSLog(@"ageNS = %@, numNS = %@, flagNS = %@",ageNS,numNS,flagNS);


    return 0;
}
