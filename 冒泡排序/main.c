//
//  main.c
//  冒泡排序
//
//  Created by Apple on 15/12/27.
//  Copyright © 2015年 Apple. All rights reserved.
//

/*
 冒泡排序-原理：
 相邻两个元素比较,每完全比较一次,最值出现在末尾

 思路:
 1.先分析如何比较
 2.找出比较的规律比较完一次之后第二次比较会少一次
 3.打印倒三角
 4.打印需要比较的角标
 5.比较并交换位置
 6.将常量替换为变量(length)
 */

#include <stdio.h>

void print(int nums[], int length);

int main(int argc, const char * argv[]) {

    // 已知一个无序的数组, 里面有5个元素, 要求对数组进行排序

    int nums[6] = {99, 12, 88, 34, 5, 7};

    int length = sizeof(nums) / sizeof(nums[0]);

    printf("排序前：\n");
    print(nums, length);
    for (int i = 0; i < length - 1; i++) {
        for (int j = 0; j < length - 1 - i; j++) {
            if (nums[j] > nums[j + 1]) {
                int temp = nums[j];
                nums[j] = nums[j + 1];
                nums[j + 1] = temp;
            }
        }
    }

    printf("排序后：\n");
    print(nums, length);

    return 0;
}

void print(int nums[], int length){
    for (int i = 0; i < length; i++) {
        printf("nums[%i] = %i\n", i, nums[i]);
    }
}
