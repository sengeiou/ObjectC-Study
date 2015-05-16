//
//  main.m
//  prog4.5.5
//
//  Created by YanTian Yu on 15/5/16.
//  Copyright (c) 2015年 YanTian Yu. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, char * argv[])
{
    @autoreleasepool {
        char c, d;
        c = 'd';
        d = c;
        NSLog(@"d = %c", d);
    }
    return 0;
}