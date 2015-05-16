//
//  main.m
//  prog4.5.6
//
//  Created by YanTian Yu on 15/5/16.
//  Copyright (c) 2015年 YanTian Yu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Complex : NSObject

-(void) setReal : (double) a;
-(void) setImaginary : (double) b;
-(void) print;
-(double) real;
-(double) imaginary;

@end

@implementation Complex
{
    double real;
    double imaginary;
}

-(void) setReal:(double)a
{
    real = a;
}

-(void) setImaginary:(double)b
{
    imaginary = b;
}

-(void) print
{
    NSLog(@"real + imaginary = %f",real+imaginary);
}

-(double) real
{
    return real;
}

-(double) imaginary
{
    return imaginary;
}

@end

int main(int argc, char * argv[])
{
    @autoreleasepool {
        Complex * complex = [[Complex alloc] init];
        
        [complex setReal:100];
        [complex setImaginary:200];
        [complex print];
    }
}
