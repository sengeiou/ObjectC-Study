//
//  Fraction+MathOps.h
//  program11.5.2
//
//  Created by YanTian Yu on 15/5/25.
//  Copyright (c) 2015年 YanTian Yu. All rights reserved.
//

#import "Fraction.h"

@interface Fraction (MathOps)

- (Fraction*) add: (Fraction*) f;
- (Fraction*) sub: (Fraction*) f;
- (Fraction*) mul: (Fraction*) f;
- (Fraction*) div: (Fraction*) f;
// Returns the inversion of the reciever
- (Fraction*) inv;

@end
