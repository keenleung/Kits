//
//  ViewController.m
//  归档
//
//  Created by Apple on 16/2/22.
//  Copyright © 2016年 Apple. All rights reserved.
//

#import "ViewController.h"
#import "Person.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

}

// 归档
- (IBAction) saveButtonDidCliked{
    // 1.获取沙盒Caches的目录
    NSString *path = NSSearchPathForDirectoriesInDomains(NSCachesDirectory, NSUserDomainMask, YES).firstObject;

    // 2.拼接路径
    NSString *dataPath = [path stringByAppendingPathComponent:@"person.data"];

    // 归档
    Dog *dog = [[Dog alloc] init];
    dog.name = @"小白";

    Person *person = [[Person alloc] init];
    person.name = @"keen";
    person.age = 24;
    person.dog = dog;

    // archiveRootObject: 底层会调用 encodeWithCoder方法,所以需要在对象上重写这个方法,表明那些对象属性需要归档
    [NSKeyedArchiver archiveRootObject:person toFile:dataPath];

    NSLog(@"归档完成...");
}

// 解档
- (IBAction) readButtonDidClicked{

    // 1.获取沙盒Caches的目录
    NSString *path = NSSearchPathForDirectoriesInDomains(NSCachesDirectory, NSUserDomainMask, YES).firstObject;

    // 2.拼接路径
    NSString *dataPath = [path stringByAppendingPathComponent:@"person.data"];

    // 3.解档: 底层会调用 initWithCoder 方法
    Person *person = [NSKeyedUnarchiver unarchiveObjectWithFile:dataPath];

    NSLog(@"解档完成: person.name = %@, person.age = %zd, person.dog.name = %@", person.name, person.age, person.dog.name);
}

@end
