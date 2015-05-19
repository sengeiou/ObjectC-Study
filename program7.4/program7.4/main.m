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
        
        [aFraction setTo:1 over:4];
        [bFraction setTo:1 over:2];
        
        [aFraction print];
        NSLog(@"+");
        [bFraction print];
        NSLog(@"=");
        
        resultFraction = [aFraction add:bFraction];
        
        [resultFraction print];
    }
    return 0;
}
