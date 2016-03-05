//
//  main.m
//  读写文件练习2
//
//  Created by Apple on 15/12/7.
//  Copyright © 2015年 Apple. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    //一.文件读取
    //路径使用URL
    //1.加载本地文件。注意：file://,不是file:///
    NSString *path = @"file://192.168.1.103/Users/apple/Desktop/KeenApps/Object-C/Object-c-Test/读写文件练习2/1.txt";

    //如果加载的是本地资源，那么URL上的主机地址可以不要
    //注意：ip地址后面的斜杠不能省略！（其代表着跟路径）
    //path = @"file:///Users/apple/Desktop/KeenApps/Object-C/Object-c-Test/读写文件练习2/1.txt";

    //如果路径中包含中文，先进行编码
    //不编码的后果是：The file couldn’t be opened because the specified URL type isn’t supported.（URL类型不支持）
    //path = [path stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];//比较老的方法，现在被下面的方法取代
    //path = [path stringByAddingPercentEncodingWithAllowedCharacters:[NSCharacterSet URLQueryAllowedCharacterSet]];

    //2.加载网络资源
    //path = @"http://www.baidu.com";

    //NSURL *url = [NSURL URLWithString:path];

    //3.使用fileURLWithPath创建URL对象，加载本地资源。
    /*
     使用这个方法时，需要注意：
     1）系统会帮我们自动加入file://，我们不需要再添加。再添加，路径就不对了。
     2）即使URL中包含中文，都可以访问。系统会自动对包含的中文进行处理。所以一般开发中，访问本地资源，都使用这个方法。
     */
    path = @"/Users/apple/Desktop/KeenApps/Object-C/Object-c-Test/读写文件练习2/1.txt";
    NSURL *url = [NSURL fileURLWithPath:path];

    NSError *error = nil;
    
    NSString *str = [NSString stringWithContentsOfURL:url encoding:NSUTF8StringEncoding error:&error];
    if (error == nil) {
        NSLog(@"%@",str);
    }
    else{
        NSLog(@"%@",[error localizedDescription]);
    }


    //二.文件写入
    //路径使用URL
    NSError *error2 = nil;
    NSString *str2 = @"this is a test2";

    /*
    //第一种方式
    NSString *path2 =@"file:///Users/apple/Desktop/KeenApps/Object-C/Object-c-Test/读写文件练习2/2.txt";
    path2 = [path2 stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
    NSLog(@"path2 = %@",path2);
    NSURL *url2 = [NSURL URLWithString:path2];
    */

    //第二种方式
    NSString *path2 = @"/Users/apple/Desktop/KeenApps/Object-C/Object-c-Test/读写文件练习2/2.txt";
    NSURL *url2 = [NSURL fileURLWithPath:path2];

    //注意：如果文件存在，则覆盖原文件的内容；如果文件不存在，则新建
    [str2 writeToURL:url2 atomically:YES encoding:NSUTF8StringEncoding error:&error2];
    if (error2 != nil) {
        NSLog(@"%@", [error2 localizedDescription]);
    }
    else{
        NSLog(@"文件写入成功!");
    }

    return 0;
}
