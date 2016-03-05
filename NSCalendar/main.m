//
//  main.m
//  NSCalendar
//
//  Created by Apple on 15/12/10.
//  Copyright © 2015年 Apple. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {

    // 情况1：利用日历类，从当前时间中单独获取年月日时分秒

    //1）获取当地时间
    //获取+0000时区时间
    NSDate *now = [NSDate date];
    NSLog(@"情况1");
    NSLog(@"now = %@",now);
    //获取当前时区
    NSTimeZone *zone = [NSTimeZone systemTimeZone];
    NSLog(@"zone = %@",zone);
    //当前时区和+0000时区相差多少秒
    NSInteger seconds = [zone secondsFromGMTForDate:now];
    //获取当地时区时间
    NSDate *nowDate = [now dateByAddingTimeInterval:seconds];
    NSLog(@"nowDate = %@",nowDate);

    //2）获取NSCalendar
    NSCalendar *calendar = [NSCalendar currentCalendar];

    // 通过NSCalendar对象获取NSDate对象的各个数据
    // 注意：如果一个方法接受一个枚举类型的参数，那么可以通过 | 符号链接多个枚举值。
    // 以下准备将年、月、日、时、分、秒的信息都取出来，所以就链接了多个部分的枚举项。
    NSCalendarUnit unit = NSCalendarUnitYear | NSCalendarUnitMonth | NSCalendarUnitDay | NSCalendarUnitHour |
                          NSCalendarUnitMinute | NSCalendarUnitSecond;
    NSDateComponents *components = [calendar components:unit fromDate:nowDate];
    NSLog(@"year = %lu, month = %lu, day = %lu ,hour = %lu, minute = %lu ,second = %lu",components.year, components.month,
          components.day, components.hour, components.minute, components.second);


    //情况2：比较两个时间之间各部分的差值

    //构建一个时间
    NSString *dateStr = @"2015-10-31 19:35:40";
    NSDateFormatter *formater = [[NSDateFormatter alloc] init];
    formater.dateFormat = @"yyyy-MM-dd HH:mm:ss";
    NSDate *myDate = [formater dateFromString:dateStr];

    //创建系统时间
    NSDate *tmpDate = [NSDate date];
    NSTimeZone *tmpZone = [NSTimeZone systemTimeZone];
    NSInteger tmpSeconds = [tmpZone secondsFromGMTForDate:tmpDate];
    NSDate *systemDate = [tmpDate dateByAddingTimeInterval:tmpSeconds];

    //创建NSCalendar对象
    NSCalendar *myCalendar = [NSCalendar currentCalendar];
    NSCalendarUnit myUnit = NSCalendarUnitYear | NSCalendarUnitMonth | NSCalendarUnitDay |
                            NSCalendarUnitHour | NSCalendarUnitMinute | NSCalendarUnitSecond;
    NSDateComponents *myComponents = [myCalendar components:myUnit fromDate:myDate toDate:systemDate options:0];

    // 注意：如果有中文，Xcode的提示可能会不出来。
    NSLog(@"情况2");
    NSLog(@"相差：%lu年 %lu月 %lu日 %lu时 %lu分 %lu秒",myComponents.year,myComponents.month, myComponents.day, myComponents.hour, myComponents.minute,myComponents.second);

    return 0;
}
