//
//  main.m
//  字符串和路径
//
//  Created by Apple on 15/12/8.
//  Copyright © 2015年 Apple. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {

    //场景1：判断路径是否是绝对路径
    NSString *path = @"/Users/apple/Desktop/1.txt";
    BOOL flag = [path isAbsolutePath];//判断准则是：路径是否是以/开头
    //打印结果
    NSLog(@"场景1");
    if (flag) {
        NSLog(@"是绝对路径");
    }
    else{
        NSLog(@"不是绝对路径");
    }

    //场景2：获取文件路径中的最后一个目录
    NSString *newStr = [path lastPathComponent];//获取方式：获取最后一个/后面的内容
    //打印结果
    NSLog(@"场景2");
    NSLog(@"%@",newStr);

    //场景3：向路径末尾添加多一个目录
    path = @"/Users/apple/Desktop";
    NSString *newPath = [path stringByAppendingPathComponent:@"测试.txt"];
    //打印结果
    NSLog(@"场景3");
    NSLog(@"path = %@",path);
    NSLog(@"newPath = %@",newPath);

    //场景4：删除路径中的最后一个目录
    newPath = [newPath stringByDeletingLastPathComponent];
    //打印结果
    NSLog(@"场景4");
    NSLog(@"newPath = %@",newPath);

    //场景5：获取路径中文件的扩展名
    path = [path stringByAppendingPathComponent:@"测试.txt"];
    NSString *extension = [path pathExtension];
    //打印结果
    NSLog(@"场景5");
    NSLog(@"path = %@",path);
    NSLog(@"extension = %@",extension);

    //场景6：删除文件路径中的扩展名
    newStr = [path stringByDeletingPathExtension];
    //打印结果
    NSLog(@"场景6");
    NSLog(@"path = %@",path);
    NSLog(@"newStr = %@",newStr);

    //场景7：给文件路径添加一个扩展名
    newStr = [newStr stringByAppendingPathExtension:@"jpg"];
    //打印结果
    NSLog(@"场景7");
    NSLog(@"newStr = %@",newStr);

    return 0;
}
