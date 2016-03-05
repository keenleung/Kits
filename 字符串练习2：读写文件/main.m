//
//  main.m
//  字符串练习2：读写文件
//
//  Created by Apple on 15/12/7.
//  Copyright © 2015年 Apple. All rights reserved.
//

#import <Foundation/Foundation.h>
void readFile(NSString *path);
void writeToFile(NSString *path, NSString *str);

int main(int argc, const char * argv[]) {

    //读取文件中的内容
    //NSString *path1 = @"/Users/apple/Desktop/KeenApps/Object-C/Object-c-Test/字符串练习2：读写文件/1.txt";
    NSString *path1 = @"/Users/apple/Desktop/1.txt";

    NSLog(@"读取文件：");
    readFile(path1);

    //写入文件内容
    NSString *path2 = @"/Users/apple/Desktop/KeenApps/Object-C/Object-c-Test/字符串练习2：读写文件/2.txt";
    NSLog(@"写入文件");
    NSString *str = @"这是一个测试";
    writeToFile(path2,str);

    NSLog(@"读取文件：");
    readFile(path2);
    return 0;
}

//读取文件
void readFile(NSString *path){
    NSError *error = nil;
    NSString *str = [NSString stringWithContentsOfFile:path encoding:NSUTF8StringEncoding error:&error];

    if (error != nil) {
        NSLog([error localizedDescription]);//将错误信息输出来
    }
    else{
        NSLog(@"%@",str);
    }

}

//写入文件
void writeToFile(NSString *path, NSString *str){
    NSError *error = nil;
    //atomically : YES时，没有写完，则会全部撤销；NO时候，没有写完，不会撤销
    //注意：这种写入方式，如果文件补存在，则创建；如果文件存在，则覆盖原文件的内容
    BOOL flag = [str writeToFile:path atomically:YES encoding:NSUTF8StringEncoding error:&error];//一般error都设置为nil，保证写入成功
    if (flag) {
        NSLog(@"写入成功");
    }
    else{
        NSLog(@"写入失败");
    }
}