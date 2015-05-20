//
//  Complex.m
//  program9.1
//
//  Created by YanTian Yu on 15/5/20.
//  Copyright (c) 2015年 YanTian Yu. All rights reserved.
//

#import "Complex.h"

@implementation Complex

@synthesize real, imaginary;

-(void) print
{
    NSLog(@" %g + %gi", real, imaginary);
}

-(void) setReal:(double)a andImaginary:(double)b
{
    real = a;
    imaginary = b;
}

-(Complex *) add:(Complex *)f
{
    Complex *result = [[Complex alloc] init];
    
    result.real = real + f.real;
    result.imaginary = imaginary + f.imaginary;
    
    return result;
}

@end
