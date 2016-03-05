//
//  main.m
//  字符串练习1
//
//  Created by Apple on 15/12/6.
//  Copyright © 2015年 Apple. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {

    NSString *str1 = @"keen";
    NSString *str2 = @"keen";
    NSLog(@"\nstr1 = %p,\nstr2 = %p",str1,str2);

    NSString *str3 = [[NSString alloc] initWithFormat:@"keen"];
    NSString *str4 = [[NSString alloc] initWithFormat:@"keen"];
    NSLog(@"\nstr3 = %p,\nstr4 = %p",str3,str4);
    NSLog(@"str3 = %@",str3);


    return 0;
}
