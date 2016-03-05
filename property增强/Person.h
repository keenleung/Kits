//
//  Person.h
//  Object-c-Test
//
//  Created by Apple on 15/11/25.
//  Copyright © 2015年 Apple. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject
//{
//    @public
//    int age;
//    int _age;
//}

@property(getter=age_get,setter=age_set:) int age;
@property(getter=isMarred) BOOL married;

@end
