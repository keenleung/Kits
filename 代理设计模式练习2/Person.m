//
//  Person.m
//  Object-c-Test
//
//  Created by Apple on 15/12/3.
//  Copyright © 2015年 Apple. All rights reserved.
//

#import "Person.h"

//定义私有方法
@interface Person()

-(void)startFindApartment:(NSTimer *)timer;

@end

//实现Person
@implementation Person

-(instancetype) initWithName:(NSString *)name withDelegate:(id<PersonProtocol>)delegate{
    self = [super init];
    if (self) {
        self.name = name;
        self.delegate = delegate;
    }
    return self;
}

-(void) wantToFindApartment{
    [NSTimer scheduledTimerWithTimeInterval:2 target:self selector:@selector(startFindApartment:) userInfo:@"代理找房子" repeats:YES];
}

//实现私有方法
-(void) startFindApartment:(NSTimer *)timer{
    NSString *info = [timer userInfo];
//    NSLog(@"1");
    if ([self.delegate respondsToSelector:@selector(personWantToFindApartment:)]) {
//        NSLog(@"%@",info);
//        KeenLog("%@",info);
        [self.delegate personWantToFindApartment:self];
    }
}

@end
