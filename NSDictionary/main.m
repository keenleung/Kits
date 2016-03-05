//
//  main.m
//  NSDictionary
//
//  Created by Apple on 15/12/9.
//  Copyright © 2015年 Apple. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {

    // 情况1：创建。
    NSDictionary *dict = [NSDictionary dictionaryWithObject:@"keen" forKey:@"name"];
    NSString *name = [dict objectForKey:@"name"];
    NSLog(@"情况1：创建。")
    NSLog(@"name = %@",name);

    dict = [NSDictionary dictionaryWithObjects:@[@"keen",@"24",@"1.66"] forKeys:@[@"name",@"age",@"height"]];
    NSLog(@"name = %@, age = %@, height = %@",[dict objectForKey:@"name"],[dict objectForKey:@"age"],[dict objectForKey:@"height"]);

    dict = @{@"name":@"keen", @"age":@"24",@"sex":@"male"};
    NSLog(@"dict = %@",dict);
    NSLog(@"name = %@, age = %@, sex = %@",dict[@"name"],dict[@"age"],dict[@"sex"]);

    //情况2：遍历
    NSLog(@"情况2：遍历");
    //方法1
    NSLog(@"方法1");
    NSArray *keyArr = [dict allKeys];
    for (int i = 0; i<dict.count; i++) {
//        NSLog(@"key = %@",keyArr[i]);
        NSString *key = keyArr[i];
        NSString *value = dict[key];
        NSLog(@"key = %@, value = %@",key,value);
    }

    //方法2：使用增加for循环
    NSLog(@"方法2");
    for (NSString *key in dict) {
//        NSLog(@"key = %@",key);
        NSLog(@"key = %@, value = %@",key,dict[key]);
    }

    //方法3：迭代器
    NSLog(@"方法3");
    [dict enumerateKeysAndObjectsUsingBlock:^(NSString *key, NSString *obj, BOOL *stop) {
        NSLog(@"key = %@, value = %@",key,obj);
    }];

    //情况3：字典文件读写。
    //1）写入文件
    //文件扩展名：plist
    NSString *path = @"/Users/apple/Desktop/KeenApps/Object-C/Object-c-Test/NSDictionary/dict.plist";
    BOOL flag = [dict writeToFile:path atomically:YES];
    NSLog(@"写入文件");
    if (flag) {
        NSLog(@"字典写入成功");
    }else{
        NSLog(@"字典写入失败");
    }

    //2）读取文件
    //注意：字典和数组不同，字典保存的数据是无序的。
    NSDictionary *newDict = [NSDictionary dictionaryWithContentsOfFile:path];
    NSLog(@"读取文件");
    NSLog(@"newDict = %@",newDict);

    return 0;
}
