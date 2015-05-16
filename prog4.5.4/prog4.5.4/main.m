//
//  main.m
//  prog4.5.4
//
//  Created by YanTian Yu on 15/5/16.
//  Copyright (c) 2015年 YanTian Yu. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        float x = 2.55;
        float result = x*x*3-5*x*x-6;
        NSLog(@"The result is %f", result);
    }
    return 0;
}
