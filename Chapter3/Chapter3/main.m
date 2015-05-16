//
//  main.m
//  Chapter3
//
//  Created by YanTian Yu on 15/5/14.
//  Copyright (c) 2015年 YanTian Yu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Fraction : NSObject

-(void) print;
-(void) setNumerator: (int) n;
-(void) setDenominator: (int) d;
-(int) numberator;
-(int) denominator;

@end

@implementation  Fraction
{
    int numberator;
    int denominator;
}

-(void) print
{
    NSLog(@"%i**%i",numberator, denominator);
}

-(void) setNumerator: (int) n
{
    numberator = n;
}

-(void) setDenominator: (int) d
{
    denominator = d;
}

-(int) numberator
{
    return numberator;
}

-(int) denominator
{
    return denominator;
}

@end

int main (int argc, char * argv[]){
    @autoreleasepool {
        Fraction *myFraction;
        
        myFraction = [Fraction alloc];
        myFraction = [myFraction init];
        
        [myFraction setNumerator:1];
        [myFraction setDenominator:3];
        
        NSLog(@"The value of myFration is : %i * %i",
              [myFraction numberator],[myFraction denominator]);
    }
    
    return 0;
}
