//
//  main.m
//  Object-c-Test
//
//  Created by Apple on 15/11/18.
//  Copyright © 2015年 Apple. All rights reserved.
//

#import <Foundation/Foundation.h>

//#pragma mark 测试类
//#pragma mark -
#pragma mark - 测试类
@interface Test : NSObject

@end

//#pragma mark 人类
//#pragma mark -
#pragma mark - 人类
@interface Person : NSObject{
    @public
        int age;
    double _height;
        double _weight;
}
-(void)walk;
-(void)eat:(NSString *)food;

@end

@implementation Person

-(void)walk{
    NSLog(@"walk ...");
}

-(void)eat:(NSString *)food{
    NSLog(@"哈哈，我在吃%@",food);
}

@end

//#pragma mark 程序入口
//#pragma mark -
#pragma mark - 程序入口
int main(int argc, const char * argv[]) {

//    NSString *name = [[NSString alloc] initWithString:@"keen"];
//    NSLog(@"%i",[name retainCount]);// -1

//    NSDictionary *dict = [NSDictionary dictionaryWithObject:@"a" forKey:@"b"];
//    NSLog(@"%@",[dict objectForKey:@"b"]);
//    [dict release];

//    NSDictionary *dict = [NSDictionary dictionaryWithObject:@"a value" forKey:@"aKey"];
//    NSLog(@"%@",[dict objectForKey:@"aKey"]);
//    [dict release];

//    NSMutableDictionary *people = [NSMutableDictionary dictionaryWithObjectsAndKeys:@"张三",@"左护法",@"李四",@"右使",@"唐sir",@"老大哥", nil];
//    [people removeObjectForKey:@"左护法"];
//    [people removeAllObjects];

//    NSMutableDictionary * dic = [[NSMutableDictionary alloc] initWithObjectsAndKeys:@"1",@"2",@"2",@"3",@"3",@"4", nil];
//    NSArray *arr = [[NSArray alloc] initWithArray:[dic allKeys]];
//
//    NSLog(@"arr = %@",arr);
//    NSString *str = [[NSString alloc] initWithFormat:[arr objectAtIndex:0],[arr objectAtIndex:1],[arr objectAtIndex:2]];
//    NSString *str = [[NSString alloc] initWithFormat:@"%@, %@, %@",[arr objectAtIndex:0],[arr objectAtIndex:1],[arr objectAtIndex:2]];
//    NSLog(@"str = %@", str);

//    NSMutableDictionary * dic = [[NSMutableDictionary alloc] initWithObjectsAndKeys:@"1",@"2",@"2",@"3",@"3",@"4", nil];
//    NSString *str = @"3";int a = 3;
//    [dic setObject:a forKey:str];
//    NSLog(@"%@",dic);

    return 0;
}
