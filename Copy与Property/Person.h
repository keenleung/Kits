//
//  Person.h
//  Object-c-Test
//
//  Created by Apple on 15/12/12.
//  Copyright © 2015年 Apple. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void (^myBlock) ();

@interface Person : NSObject

//@property(nonatomic, assign) NSString *name;
// 注意：以后字符串属性都用copy
@property(nonatomic, copy) NSString *name;

//@property(nonatomic, assign) myBlock pBlock;
@property(nonatomic, copy) myBlock pBlock;// 使block转移到堆中

@end
