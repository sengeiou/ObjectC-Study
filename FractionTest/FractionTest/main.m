//
//  main.m
//  FractionTest
//
//  Created by YanTian Yu on 15/5/18.
//  Copyright (c) 2015年 YanTian Yu. All rights reserved.
//

#import "Fraction.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Fraction * myFraction = [[Fraction alloc] init];
        
        [myFraction setNumerator:1];
        [myFraction setDenominator:3];
        [myFraction print];
        
        [myFraction setTo:100 over:300];
        [myFraction print];
        
    }
    return 0;
}
