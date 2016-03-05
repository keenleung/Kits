//
//  main.m
//  NSMutableDictionary
//
//  Created by Apple on 15/12/9.
//  Copyright © 2015年 Apple. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {

    //情况1：创建。
    NSMutableDictionary *dictM = [NSMutableDictionary dictionary];
    NSLog(@"情况1");
    NSLog(@"dictM = %@",dictM);

    //情况2：添加。
    [dictM setObject:@"keen" forKey:@"name"];
    NSLog(@"情况2");
    NSLog(@"%@",dictM);
    //将字典中所有的简直对取出来，添加到dictM中
    [dictM setValuesForKeysWithDictionary:@{@"age":@"24",@"height":@"165cm"}];
    NSLog(@"dictM = %@",dictM);

    //情况3：获取。
    NSLog(@"情况3");
    NSLog(@"name = %@",[dictM objectForKey:@"name"]);
    NSLog(@"age = %@",dictM[@"age"]);

    //情况3：删除。
    NSLog(@"情况3");
    [dictM setValue:@"male" forKey:@"sec"];
    NSLog(@"dictM = %@",dictM);
    [dictM removeObjectForKey:@"height"];
    NSLog(@"dictM = %@",dictM);

    //情况4：修改。直接给相同的key赋值就行。
    NSLog(@"情况4");
    [dictM setValue:@"Andi" forKey:@"name"];
    NSLog(@"dictM = %@",dictM);

    //情况5：注意点

    //1）不能使用@{}来创建可变字典
    NSMutableDictionary *newDictM = @{@"name":@"keen",@"age":@"23"};
//    newDictM[@"age"] = @"24";//运行到这里时，会直接报错！
    NSLog(@"(1)")
    NSLog(@"newDictM = %@",newDictM);

    //2）出现同名的key时：不可变字典，前面的值保留下来；可变字典，后面的值保留下来。
    NSDictionary *dict = @{@"name":@"keen",@"name":@"andi"};
    NSLog(@"(2)");
    NSLog(@"dict = %@",dict);
    newDictM = [NSMutableDictionary dictionaryWithObjects:@[@"keen",@"andi"] forKeys:@[@"name",@"name"]];
    NSLog(@"newDictM = %@",newDictM);

    return 0;
}
