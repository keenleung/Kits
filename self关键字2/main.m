//
//  main.m
//  self关键字2
//
//  Created by Apple on 15/11/22.
//  Copyright © 2015年 Apple. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "IPhone.h"

int main(int argc, const char * argv[]) {

    IPhone *phone = [[IPhone alloc] init];
    [phone cameraWithFlashlightStatus: kFlashlightStatusOpen];
    return 0;
}
