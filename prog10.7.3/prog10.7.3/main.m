//
//  main.m
//  prog10.7.3
//
//  Created by YanTian Yu on 15/5/24.
//  Copyright (c) 2015年 YanTian Yu. All rights reserved.
//

#import "Fraction.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        FractionObj a = [[Fraction alloc] init];
        FractionObj b = [[Fraction alloc] init];
        FractionObj result;
        
        [a setTo:1 over:3];
        [b setTo:2 over:5];
        
        [a print];
        NSLog(@"  +");
        [b print];
        NSLog(@"-----");
        result = [a add: b];
        [result print];
        
        NSLog(@"Fraction's add method was called %i time(s).",[Fraction addCounter]);
    }
    return 0;
}
