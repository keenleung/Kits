//
//  main.c
//  选择排序
//
//  Created by Apple on 15/12/27.
//  Copyright © 2015年 Apple. All rights reserved.
//

/*
 选择排序-原理：
 从第一个元素的值开始,依次和其它元素的值进行比较,如果后面的元素的值小于这个元素的值,就换位置
 完全比较完一次之后,  最值出现在第0位

 尖尖朝上: 修改内循环的 条件表达式
 尖尖朝下: 修改内循环的 初始化表达式
 

 */

#include <stdio.h>

void print(int nums[], int length);

int main(int argc, const char * argv[]) {

    // 已知一个无序的数组, 里面有5个元素, 要求对数组进行排序

    int nums[8] = {99, 12, 88, 34, 5, 44, 12, 100};

    int length = sizeof(nums) / sizeof(nums[0]);

    printf("排序前：\n");
    print(nums, length);

    // length - 1是为了防止角标越界
    // length - 1因为最后一个元素已经没有可以比较的了

    for (int i = 0; i < length - 1; i++) {
        for (int j = i + 1; j < length; j++) {
            //换位置,将小数放前面
            if (nums[i] > nums[j]) {
                int temp = nums[i];
                nums[i] = nums[j];
                nums[j] = temp;
            }
        }
    }

    printf("排序后：\n");
    print(nums, length);

    return 0;
}

void print(int nums[8], int length){
    for (int i = 0; i < length; i++) {
        printf("nums[%i] = %i\n", i, nums[i]);
    }
}
