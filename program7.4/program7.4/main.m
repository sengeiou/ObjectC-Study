//
//  main.m
//  program7.4
//
//  Created by YanTian Yu on 15/5/19.
//  Copyright (c) 2015年 YanTian Yu. All rights reserved.
//

#import "Fraction.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Fraction *aFraction = [[Fraction alloc] init];
        Fraction *bFraction = [[Fraction alloc] init];
        
        Fraction *resultFraction;
        
        [aFraction setTo:2 over:8];
        [bFraction setTo:3 over:9];
        
        [aFraction print:YES];
        NSLog(@"+");
        [bFraction print:NO];
        NSLog(@"=");
        
        resultFraction = [aFraction add:bFraction];
        
        [resultFraction print:YES];
    }
    return 0;
}
