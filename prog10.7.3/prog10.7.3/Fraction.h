//
//  Fraction.h
//  prog10.7.3
//
//  Created by YanTian Yu on 15/5/24.
//  Copyright (c) 2015年 YanTian Yu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Fraction : NSObject

typedef Fraction * FractionObj;

@property int numerator, denominator;

-(void) print;
-(void) setTo:(int) n over:(int) d;
-(double) convertToNum;
-(id) add:(id) f;
+(int) addCounter;

-(Fraction*) subtract:(Fraction*) f;
-(Fraction*) multiply:(Fraction*) f;
-(Fraction*) divide:(Fraction*) f;

-(void) reduce;

@end
