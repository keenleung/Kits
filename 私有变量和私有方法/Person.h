//
//  Person.h
//  Object-c-Test
//
//  Created by Apple on 15/11/24.
//  Copyright © 2015年 Apple. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject
{
    @public
    int _age;
    @protected
    double _height;
    @private
    NSString *_name;
    @package
    double _weight;
}
-(void) test2;

@end
