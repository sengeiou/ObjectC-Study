//
//  Fraction.m
//  prog10.7.3
//
//  Created by YanTian Yu on 15/5/24.
//  Copyright (c) 2015年 YanTian Yu. All rights reserved.
//

#import "Fraction.h"

static int gAddCounter;

@implementation Fraction

@synthesize numerator, denominator;

- (void) print
{
    NSLog(@"%i/%i", numerator, denominator);
}

- (double) convertToNum
{
    if( denominator != 0){
        return (double) numerator / denominator;
    }else{
        return NAN;
    }
}

- (void) setTo:(int)n over:(int)d
{
    numerator = n;
    denominator = d;
}

- (id) add:(id)f
{
    extern int gAddCounter;
    Fraction* sum = [[Fraction alloc] init];
    sum.numerator = numerator * [f denominator] + denominator * [f numerator];
    sum.denominator = denominator * [f denominator];
    [sum reduce];
    
    ++ gAddCounter;
    return sum;
}

- (Fraction*) subtract:(Fraction*) f
{
    Fraction* difference = [[Fraction alloc] init];
    difference.numerator = numerator * f.denominator -
    denominator * f.numerator;
    difference.denominator = denominator * f.denominator;
    [difference reduce];
    
    return difference;
}

- (Fraction*) multiply:(Fraction*) f
{
    Fraction* product = [[Fraction alloc] init];
    product.numerator = numerator * f.numerator;
    product.denominator = denominator * f.denominator;
    [product reduce];
    
    return product;
}

- (Fraction*) divide:(Fraction*) f
{
    Fraction* quotient = [[Fraction alloc] init];
    quotient.numerator = numerator * f.denominator;
    quotient.denominator = denominator * f.numerator;
    
    [quotient reduce];
    return quotient;
}

- (void) reduce
{
    int u = numerator;
    int v = denominator;
    int temp;
    while (v != 0) {
        temp = u % v;
        u = v;
        v = temp;
    }
    
    numerator /= u;
    denominator /= u;
}

+ (int) addCounter
{
    extern int gAddCounter;
    
    return gAddCounter;
}

@end
