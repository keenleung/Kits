//
//  main.m
//  NSFileManager
//
//  Created by Apple on 15/12/11.
//  Copyright © 2015年 Apple. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {

    //NSFileManager是一个单例对象，创建一次，可以全局使用
    NSFileManager *manager = [NSFileManager defaultManager];

    // 情况1：判断一个文件或文件夹是否存在
    NSString *path = @"/Users/apple/Desktop/KeenApps/Object-C/Object-c-Test/NSFileManager/1.txt";
    BOOL flag1 = [manager fileExistsAtPath:path];
    bool flag2 = [manager fileExistsAtPath:[path stringByDeletingLastPathComponent]];
    NSLog(@"情况1");
//    NSLog(@"%@",[path stringByDeletingLastPathComponent]);
    if (flag1) {
        NSLog(@"是一个文件路径");
    }
    if (flag2) {
        NSLog(@"是一个文件夹路径");
    }

    // 情况2：判断路径是否存在，而且判断该路径是不是一个目录
    BOOL flag = NO;
    BOOL tmpFlag = [manager fileExistsAtPath:path isDirectory:&flag];
//    tmpFlag = [manager fileExistsAtPath:[path stringByDeletingLastPathComponent] isDirectory:&flag];
    NSLog(@"情况2");
    if (tmpFlag) {
        NSLog(@"文件路径/文件夹路径 存在");
        if (flag) {
            NSLog(@"是文件夹路径");
        }else{
            NSLog(@"不是文件夹路径");
        }
    }else{
        NSLog(@"文件路径/文件夹路径 不存在");
    }

    // 情况3：获取文件或文件夹属性
    NSError *error = nil;
    NSDictionary *info = [manager attributesOfItemAtPath:path error:&error];
    NSLog(@"情况3");
    NSLog(@"info = %@",info);

    // 情况4：获取文件夹中的所有文件
    // 1）不包含子文件夹下面的子文件
    // 注意：如果有中文，会有乱码出现。
    NSArray *res = [manager contentsOfDirectoryAtPath:[path stringByDeletingLastPathComponent] error:&error];
    NSLog(@"情况4-1");
    NSLog(@"res = %@",res);

    // 2）包含子文件夹下面的子文件
    res = [manager subpathsOfDirectoryAtPath:[path stringByDeletingLastPathComponent] error:&error];
    NSLog(@"情况4-2");
    NSLog(@"res = %@",res);

    // 情况5：创建文件夹
    NSString *myPath = [[path stringByDeletingLastPathComponent] stringByAppendingPathComponent:@"KeenTest"];
    myPath = [myPath stringByAppendingPathComponent:@"folder1"];
    // 参数说明：
    // createDirectoryAtPath:文件夹路径。
    // withIntermediateDirectories：如果路径中有些文件夹不存在，是否自动创建不存在的文件夹。
    // attributes:指定创建出来的文件夹的属性。
    flag = [manager createDirectoryAtPath:myPath withIntermediateDirectories:YES attributes:(nil) error:&error];
    NSLog(@"情况5");
    if (flag) {
        NSLog(@"创建文件夹成功！");
    }else{
        NSLog(@"创建文件夹失败：%@",[error localizedDescription]);
    }

    // 情况6：创建文件
    myPath = [myPath stringByAppendingPathComponent:@"说明.txt"];
    NSString *tmpStr = @"程序员";
    NSData *data = [tmpStr dataUsingEncoding:NSUTF8StringEncoding];
    // 参数说明：
    // createFileAtPath: 文件路径
    // contents: 文件中的内容（二进制数据对象）
    // attributes: 文件属性

    // 注意：NSData : 表示的是二进制数据。
    flag = [manager createFileAtPath:myPath contents:data attributes:nil];
    NSLog(@"情况6");
    if (flag) {
        NSLog(@"创建文件成功");
    }else{
        NSLog(@"创建文件失败");
    }

    return 0;
}
