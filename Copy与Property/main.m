//
//  main.m
//  Copy与Property
//
//  Created by Apple on 15/12/12.
//  Copyright © 2015年 Apple. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "Dog.h"

int main(int argc, const char * argv[]) {

    // copy的第一个用途：防止外界修改内部属性
    NSMutableString *strM = [NSMutableString stringWithFormat:@"keen"];

    Person *p = [[Person alloc] init];
    p.name = strM;

    // 问题：修改了外面的变量，影响到了对象中的属性
    // 处理：如果不想有影响，需要把对象属性（NSString类型的）设置为copy
    [strM appendString:@" is male"];

    NSLog(@"用途1");
    NSLog(@"p.name = %@",p.name);


    /*
    int num = 10;
    void (^myBlock)() = ^{
        //num = 20;//不能修改外部变量的值
        NSLog(@"num = %i",num);
    };
    myBlock();
     */

    // block默认存储在栈中，栈中的block访问外界的对象时，不会对对象进行retain
    // block存储在堆中时，如果堆中的block访问了外界对象，会对外界的对象进行一次retain
    /*
    Person *p2 = [[Person alloc] init];
    NSLog(@"retainCount = %lu",[p2 retainCount]);
    void (^myBlock2)() = ^{
        NSLog(@"%@",p2);
        NSLog(@"retainCount = %lu",[p2 retainCount]);
    };
    Block_copy(myBlock2);//将block转移到堆中
    myBlock2();
     */

    // copy的第二个用途：可以使用copy转移block到堆中
    NSLog(@"用途2");
    Person *p2 = [[Person alloc] init];
    Dog *d = [[Dog alloc] init];

    p2.pBlock = ^{
        NSLog(@"%@",d);
    };

    [d release];

    p2.pBlock();

    [p2 release];

    // copy注意点：如果对象中的block又用到了对象自己，为了避免内存泄露，应该将对象修饰为 __block
    NSLog(@"注意点");
    __block Person *p3 = [[Person alloc] init];

    p3.name = @"keen";
    NSLog(@"retainCount = %lu",[p3 retainCount]);
    p3.pBlock = ^(){
        NSLog(@"name = %@",p3.name);
    };
    NSLog(@"retainCount = %lu",[p3 retainCount]);
    p3.pBlock();

    [p3 release];

    return 0;
}
