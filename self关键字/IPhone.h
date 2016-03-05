//
//  IPhone.h
//  Object-c-Test
//
//  Created by Apple on 15/11/22.
//  Copyright © 2015年 Apple. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum {
    kFlashlightStatusOpen,
    kFlashlightStatusClose
}FlashlightStatus;

@interface IPhone : NSObject
{
    int _cup;
}


//根据闪光灯的状态来进行拍照
+(void)cameraWithFlashlightStatus:(FlashlightStatus)status;

//打开闪光灯
+(void)openFlashlight;

//关闭闪光灯
-(void)closeFlashlight;
@end
