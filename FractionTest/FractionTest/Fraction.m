//
//  Fraction.m
//  FractionTest
//
//  Created by YanTian Yu on 15/5/18.
//  Copyright (c) 2015年 YanTian Yu. All rights reserved.
//

#import "Fraction.h"

@implementation Fraction

@synthesize numerator, denominator;

-(void) print
{
    NSLog(@"%i/%i", numerator, denominator);
}

-(void) setTo:(int)n over:(int)d
{
    numerator = n;
    denominator = d;
}

-(double) converToNum
{
    if(denominator != 0){
        return (double) numerator / denominator;
    }else{
        return NAN;
    }
}

@end
