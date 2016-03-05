//
//  main.m
//  单例(MRC下)
//
//  Created by Apple on 15/12/13.
//  Copyright © 2015年 Apple. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Tools.h"

int main(int argc, const char * argv[]){

    Tools *tool = [Tools shareInstance];

    [tool release];

    return 0;
}
