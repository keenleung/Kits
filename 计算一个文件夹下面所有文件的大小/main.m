//
//  main.m
//  计算一个文件夹下面所有文件的大小
//
//  Created by Apple on 15/12/11.
//  Copyright © 2015年 Apple. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {

    //计算文件夹下面所有文件的大小（包括子文件夹下面的文件）

    // 1.新建一个NSFileManager对象
    NSFileManager *manager =[NSFileManager defaultManager];
    // 2.文件夹路径
    NSString *path = @"/Users/apple/Desktop/KeenApps/Object-C/Object-c-Test/计算一个文件夹下面所有文件的大小";
//    NSError *error = nil;
//    NSArray *res = [manager subpathsOfDirectoryAtPath:path error:&error];
//    if (error == nil) {
//        NSLog(@"res = %@",res);
//    }else{
//        NSLog(@"error = %@",[error localizedDescription]);
//    }
    NSDirectoryEnumerator *enumerator = [manager enumeratorAtPath:path];
    NSString *filePath;
    long long filesSize = 0;
    int count = 0;
    while (filePath = [enumerator nextObject]) {
        filePath = [path stringByAppendingPathComponent:filePath];
        BOOL flag = NO;
        [manager fileExistsAtPath:filePath isDirectory:&flag];
        if (!flag) {
            count++;
            NSLog(@"filePath = %@",filePath);
            NSDictionary *dictionary = [manager attributesOfItemAtPath:filePath error:nil];
            //NSLog(@"file size = %lli",dictionary.fileSize);
            filesSize += dictionary.fileSize;
        }
    }
//    NSLog(@"filesSize = %lli字节,即为：%.2fM",filesSize,filesSize/1024.0/1024.0);
    NSLog(@"文件个数有：%i, 总文件大小：%lli字节，%.2fM",count, filesSize, filesSize/1024.0/1024.0);

    return 0;
}
