//
//  Fraction.h
//  FractionTest
//
//  Created by YanTian Yu on 15/5/18.
//  Copyright (c) 2015年 YanTian Yu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Fraction : NSObject

@property int numerator, denominator;

-(void) print;
-(void) setTo: (int) n over: (int) d;
-(double) converToNum;

@end
