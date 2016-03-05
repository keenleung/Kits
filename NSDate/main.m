//
//  main.m
//  NSDate
//
//  Created by Apple on 15/12/10.
//  Copyright © 2015年 Apple. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {

    // 情况1：创建和获取。
    NSDate *now = [NSDate date];//取得到的是时区+0000的时间
    NSLog(@"now = %@",now);

    //1）取得当前时区
    NSTimeZone *zone = [NSTimeZone systemTimeZone];
    //2）获取当前时区与指定时间的时间差
    NSInteger seconds = [zone secondsFromGMTForDate:now];
    //3）将时间差加入到时间中，返回当前时间
    NSDate *newDate = [now dateByAddingTimeInterval:seconds];
    NSLog(@"情况1");
    NSLog(@"newDate = %@",newDate);

    //情况2：时间格式化（将时间对象转化为字符串对象）
    //1）创建一个时间格式化对象
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    //2）设置格式
    //   注意：时区的格式是：Z
    formatter.dateFormat = @"yyyy年MM月dd日 HH时mm分ss秒";
    //3）利用格式化对象对时间进行格式化（将时间对象转化为字符串对象）
    //   注意：即使没有设置时区的时间差，转化完之后就是本地的时间
    NSLog(@"情况2");
    NSLog(@"now = %@",now);
    NSString *nowStr = [formatter stringFromDate:now];
    NSLog(@"nowStr = %@",nowStr);

    //情况3：时间字符串转时间对象
    NSString *tempDate = @"2015-12-10 5:34:56 +0000";
    NSDateFormatter *tmpFormatter = [[NSDateFormatter alloc] init];
    tmpFormatter.dateFormat = @"yyyy-MM-dd hh:mm:ss Z";
    NSDate *tmpDate = [tmpFormatter dateFromString:tempDate];
    NSLog(@"情况3");
    NSLog(@"tempDate = %@",tempDate);
    NSLog(@"tmpDate = %@",tmpDate);

    return 0;
}
