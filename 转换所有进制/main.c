//
//  main.c
//  转换所有进制
//
//  Created by Apple on 15/12/27.
//  Copyright © 2015年 Apple. All rights reserved.
//

#include <stdio.h>

void transform(int value, int base, int offset);
void binary(int value);
void octal(int value);
void hex(int value);

int main(int argc, const char * argv[]) {
    printf("二进制：\n");
    binary(998);
    printf("八进制：\n");
    octal(998);
    printf("十六进制：\n");
    hex(998);

    return 0;
}

// 二进制
void binary(int value){
    transform(value, 1, 1);
}

// 八进制
void octal(int value){
    transform(value, 7, 3);// 3个二进制数为单位表示一个八进制
}

// 十六进制
void hex(int value){
    transform(value, 15, 4);
}

// 转换所有的进制
// value就是需要转换的数值
// base就是需要&上的数
// offset就是需要右移的位数
void transform(int value, int base, int offset)
{
    // 1.定义一个数组, 用于保存十六进制中所有的取值
    char charValues[] = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};
    // 2.定义一个数组, 用于保存查询后的结果
    char results[32] = {'0'};
    // 3.定义一个变量, 用于记录当前需要存储到查询结果数组的索引
    int pos = sizeof(results)/ sizeof(results[0]);

    while (value != 0) {
        // 1.取出1位的值
        int res = value & base;// 1 7 15
        // 2.利用取出来得值到表中查询对应的结果
        char c = charValues[res];
        // 3.存储查询的结果
        results[--pos] = c;
        // 4.移除二进制被取过的1位
        value = value >> offset;// 1 3 4
    }

    // 4.打印结果
    for (int i = pos; i < 32; i++) {
        printf("%c", results[i]);
    }
    printf("\n");

}

