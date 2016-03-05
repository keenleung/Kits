//
//  main.m
//  kvc
//
//  Created by Apple on 15/12/26.
//  Copyright © 2015年 Apple. All rights reserved.
//

/*
 setValue: forKey
 valueForKey:

 setValuesForKeysWithDictionary
 dictionaryWithValuesForKeys

 */
#import <Foundation/Foundation.h>
#import "Person.h"
#import "Book.h"

int main(int argc, const char * argv[]) {

    /*
     KVC: Key Value Coding (键值编码)
     作用:
     1.取值和赋值 (开发中几乎不用)
     2.获取对象的私有成员变量的值(重要) (UIPageContorl分页, 设置原点为图片)
     3.改变对象的私有成员变量的值(重要)
     4.简单的字典转模型
     5.模型转字典
     6.批量取值

     */
    



    return 0;
}

/**
 *  简单的字典转模型(只能转一层)---->MJExtention
 */
void test5(){
    // 字典
    // 弊端: !.字典中的key必须和类中的属性完全匹配
    //               2. KVC十分暴力 ---> MJExtention
    NSDictionary *dict = @{
                           @"name": @"张三",
                           @"height" : @18,
                           @"books" :@[
                                   @{@"name": @"葵花宝典", @"price": @1.009},
                                   @{@"name": @"辟邪剑谱", @"price": @111111.009}
                                   ]
                           };
    XMGPerson *person = [[XMGPerson alloc] initWithDict:dict];

    NSLog(@"%@-----%@", person, person.books);
}

/**
 * 获取对象的私有成员变量的值
 */
void test4(){
    XMGPerson *person = [[XMGPerson alloc] init];
    NSLog(@"%f", [[person valueForKeyPath:@"_money"] floatValue]);
}

/**
 * 改变对象的私有成员变量的值
 */
void test3(){
    XMGPerson *person = [[XMGPerson alloc] init];
    // 改变之前的值
    [person printMoney];
    [person setValue:@"199.99" forKeyPath:@"_money"]; // KVC是十分智能,money, _money都能辨别
    // 改变之后的值
    [person printMoney];
}


/**
 *  利用KVC进行复杂的赋值
 */
void test2(){
    XMGPerson *person = [[XMGPerson alloc] init];
    person.dog = [[XMGDog alloc] init];

    /*
     [person.dog setValue:@"旺财" forKey:@"name"];
     [person.dog setValue:@1.99 forKeyPath:@"price"];
     */
    // forKeyPath:能够根据点语法层层进入取值
    // forKeyPath包含了forKey的所有功能
    [person setValue:@"阿黄" forKeyPath:@"dog.name"];
    [person setValue:@1999.99 forKeyPath:@"dog.price"];

    NSLog(@"%@----%lf", person.dog.name, person.dog.price);
}

/**
 *  利用KVC进行赋值
 */
void test1(){
    XMGPerson *person = [[XMGPerson alloc] init];
    /*
     person.name = @"zhangsan";
     person.age = 18;
     */

    [person setValue:@"lisi" forKey:@"name"];
    [person setValue:@"1.55" forKeyPath:@"height"]; // KVC能够自动进行类型转化

    NSLog(@"%@----%lf", person.name, person.height);
}

- (void) test{
    Person *p1 = [[Person alloc] init];
    p1.name = @"keen";
    p1.age = 24;

    Person *p2 = [[Person alloc] init];

    // 通过 setValue: 方法
    [p2 setValue:@"andi" forKey:@"name"];
    [p2 setValue:@25 forKey:@"age"];

    // 通过 setValuesForKeysWithDictionary 设置值
    Person *p3 = [[Person alloc] init];
    NSDictionary *dict = @{@"name":@"phoenix",@"age":@26};
    [p3 setValuesForKeysWithDictionary:dict];
    NSLog(@"p3.name = %@, p3.age = %i",p3.name, p3.age);

    // 通过 setValuesForKeyWithDictionary 方法，直接赋值 dict 对象（但名称必须要一致）
    NSDictionary *dictTmp = @{@"name":@"keenleung",@"age":@23};
    [p1 setValuesForKeysWithDictionary:dictTmp];

    // 通过 valueForKey 来获取
    NSLog(@"p1: name = %@, age = %i", [p1 valueForKey:@"name"], [[p1 valueForKey:@"age"] intValue]);

    NSArray *arr = @[p1, p2];

    // 通过 valueForKey 获取，但返回的是数组
    NSArray *nameArr = [arr valueForKey:@"name"];
    NSLog(@"nameArr = %@",nameArr);

    // 通过dictionaryWithValuesForKeys 方法来获取键所对应数值
    dict = [arr dictionaryWithValuesForKeys:@[@"name",@"age"]];
    NSLog(@"dict = %@",dict);

    Book *book = [[Book alloc] init];
    book.name = @"Object-C";

    // 通过 valueForKeyPath 来访问数值，但必须要匹配对！
    p1.book = book;
    NSString *bookName = [p1 valueForKeyPath:@"book.name"];
    NSLog(@"bookName = %@",bookName);
    

}
