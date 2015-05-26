//
//  Fraction+Comparison.h
//  program11.5.2
//
//  Created by YanTian Yu on 15/5/25.
//  Copyright (c) 2015年 YanTian Yu. All rights reserved.
//

#import "Fraction.h"

@interface Fraction (Comparison)

- (BOOL) isEqualTo: (id) object;
- (BOOL) isLessThanOrEqualTo: (id) object;
- (BOOL) isLessThan: (id) object;
- (BOOL) isGreaterThanOrEqualTo: (id) object;
- (BOOL) isGreaterThan: (id) object;
- (BOOL) isNotEqualTo: (id) object;
- (int) compare: (Fraction*) f;

@end
