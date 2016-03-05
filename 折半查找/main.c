//
//  main.c
//  折半查找
//
//  Created by Apple on 15/12/27.
//  Copyright © 2015年 Apple. All rights reserved.
//

/*

 折半查找的原理:
 1.数组必须是有序的(前提条件)
 2.必须已知min和max(知道范围)
 3.动态计算mid的值, 取出mid对应的值进行比较
 4.如果mid对应的值大于了需要查找的值, 那么max要变小为mid-1
 5.如果mid对应的值小于了需要查找的值, 那么min要变大为mid+1

 */

#include <stdio.h>

int findKey(int nums[], int length, int key);

int main(int argc, const char * argv[]) {

    // 数组必须是排序好的
    int nums[] = {11, 13, 56, 78, 111, 167};
    int length = sizeof(nums) / sizeof(nums[0]);
    int index = findKey(nums, length, 167);
    printf("index = %i\n", index);

    return 0;
}

// 折半查找
int findKey(int nums[], int length, int key){
    int min, max, mid;
    min = 0;
    max = length - 1;

    // 只要还在我们的范围内就需要查找
    while (min <= max) {
        // 计算中间值
        mid = (min  + max) / 2;
        if (key > nums[mid]) {
            min = mid + 1;
        }else if (key < nums[mid])
        {
            max = mid - 1;
        }else
        {
            return mid;
        }
    }
    return -1;
}


//问题2:在有序数组中,插入一个数字,保证数组有序?

// 现有一个有序的数组, 要求给定一个数字, 将该数字插入到数组中, 还要保证数组是有序的
//找到需要插入数字的位置,其实这个位置就是min的位置
//当min > max 的时候,结束查找
int insertValue(int nums[], int length, int key)
{
    int min , max, mid;
    min = 0;
    max = length - 1;
    while (min <= max) {
        mid = (min + max) / 2;
        if (key > nums[mid]) {
            min = mid + 1;
        }else if (key < nums[mid])
        {
            max = mid - 1;
        }
    }
    return min;
}

