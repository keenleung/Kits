//
//  main.m
//  排序
//
//  Created by Apple on 15/12/13.
//  Copyright © 2015年 Apple. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

NSArray* sortNumber(NSArray *originalArray);
NSArray* sortString(NSArray *originalArray);
NSArray* sortDictionary(NSArray *originalArray);
NSArray* sortDefinedObj(NSArray *originalArray);

int main(int argc, const char * argv[]) {

    // 数字排序
    NSArray *numberArr = @[@"56",@"20",@"2",@"9",@"90",@"100"];
    NSArray *numSortArr = sortNumber(numberArr);
    NSLog(@"numSortArr = %@", numSortArr);

    // 字符串排序
    NSArray *stringArr = @[@"ab4",@"ab3",@"AB",@"abcd",@"eqr",@"eqh"];
    NSArray *strSortArr = sortString(stringArr);
    NSLog(@"strSortArr = %@",strSortArr);

    // 字典排序
    NSArray *dictArr = @[@{@"age1":@"24"},@{@"age2":@"56"},@{@"age3":@"14"},@{@"age4":@"27"}];
    NSArray *sortDictArr = sortDictionary(dictArr);
    NSLog(@"sortDictArr = %@",sortDictArr);

    Person *p1 = [[Person alloc] init];
    Person *p2 = [[Person alloc] init];
    Person *p3 = [[Person alloc] init];
    p1.name = @"keen";
    p1.age = 24;
    p2.name = @"andi";
    p2.age = 10;
    p3.name = @"phoenix";
    p3.age = 9;

    NSArray *definedArr = @[p1, p2, p3];
    NSArray *sortDefinedArr = sortDefinedObj(definedArr);
    NSLog(@"sortDefinedArr = %@",sortDefinedArr);

    return 0;
}

//数字排序
NSArray* sortNumber(NSArray *originalArray){

    /*
    NSComparator compartor = ^(id value1, id value2){
        if ([value1 intValue] < [value2 intValue]) {
            return NSOrderedAscending;
        }else if([value1 intValue] > [value2 intValue]){
            return NSOrderedDescending;
        }
        else
            return NSOrderedSame;
    };

    NSArray *sortArray = [originalArray sortedArrayUsingComparator:compartor];
     */

    NSArray *sortArray = [originalArray sortedArrayUsingComparator:^NSComparisonResult(NSString *obj1, NSString *obj2) {
//        return [obj1 intValue] > [obj2 intValue];
        return [obj1 intValue] < [obj2 intValue];
    }];

    return sortArray;
}

//字符串排序
NSArray* sortString(NSArray *originalArray){

    NSStringCompareOptions option = NSCaseInsensitiveSearch | NSNumericSearch | NSForcedOrderingSearch;

    NSArray *sortArray = [originalArray sortedArrayUsingComparator:^NSComparisonResult(NSString *obj1, NSString *obj2) {
        return [obj1 compare:obj2 options:option];
    }];

    return sortArray;
}

//字典排序
NSArray* sortDictionary(NSArray *originalArray){
    NSArray *sortArray = [originalArray sortedArrayUsingComparator:^NSComparisonResult(NSDictionary *obj1, NSDictionary *obj2) {
//        NSLog(@"obj1 = %@",obj1);
        //NSLog(@"obj1 = %@",[[obj1 allKeys] objectAtIndex:0]);
        //NSLog(@"obj2 = %@",[[obj2 allKeys] objectAtIndex:0]);
        NSString *key1 = [[obj1 allKeys] objectAtIndex:0];
        NSString *key2 = [[obj2 allKeys] objectAtIndex:0];
        NSString *str1 = [obj1 valueForKey:key1];
        NSString *str2 = [obj2 valueForKey:key2];

        return [str1 intValue] > [str2 intValue];
        //return [[obj1 valueForKey:key1] compare:[obj2 valueForKey:key2]];
    }];
    return sortArray;
}

//自定义对象排序
NSArray* sortDefinedObj(NSArray *originalArray){
    NSArray *sortArray = [originalArray sortedArrayUsingComparator:^NSComparisonResult(Person *obj1, Person *obj2) {
        return obj1.age > obj2.age;
    }];
    return sortArray;
}
