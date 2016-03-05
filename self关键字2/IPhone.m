//
//  IPhone.m
//  Object-c-Test
//
//  Created by Apple on 15/11/22.
//  Copyright © 2015年 Apple. All rights reserved.
//

#import "IPhone.h"


@implementation IPhone
-(void)cameraWithFlashlightStatus:(FlashlightStatus)status
{
    if (status == kFlashlightStatusOpen) {
//        [IPhone openFlashlight];
        [self openFlashlight];
    }
    else{
//        [IPhone closeFlashlight];
        [self closeFlashlight];
    }
    NSLog(@"拍照");
}

-(void)openFlashlight{
    NSLog(@"打开闪光灯");
}

-(void)closeFlashlight{
    NSLog(@"关闭闪光灯");
}
@end
