//
//  Fraction.h
//  program7.4
//
//  Created by YanTian Yu on 15/5/19.
//  Copyright (c) 2015年 YanTian Yu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Fraction : NSObject

@property int numerator, denominator;

-(void) print:(BOOL) b;
-(void) setTo: (int) n over: (int) d;
-(double) convertToNum;
-(Fraction *) add: (Fraction *) f;
-(void) reduce;

//减去消息接收者的参数
-(Fraction *) substract: (Fraction *) f;
//消息接收者乘以参数
-(Fraction *) multiply:(Fraction *) f;
//消息接收者除以参数
-(Fraction *) divide:(Fraction *) f;

@end
