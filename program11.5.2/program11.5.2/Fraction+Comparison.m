//
//  Fraction+Comparison.m
//  program11.5.2
//
//  Created by YanTian Yu on 15/5/25.
//  Copyright (c) 2015年 YanTian Yu. All rights reserved.
//

#import "Fraction+Comparison.h"

@implementation Fraction (Comparison)

- (BOOL) isEqualTo: (id) f
{
    if ([self compare: f] == 0)
        return YES;
    else
        return NO;
}

- (int) compare: (Fraction*) f
{
    if ([self convertToNum] == [f convertToNum])
        return 0;
    else if ([self convertToNum] > [f convertToNum])
        return 1;
    else
        return -1;
}

- (BOOL) isLessThanOrEqualTo: (id) object
{
    if ([self convertToNum] <= [object convertToNum])
        return YES;
    else
        return NO;
}

- (BOOL) isLessThan: (id) object
{
    if ([self convertToNum] < [object convertToNum])
        return YES;
    else
        return NO;
}

- (BOOL) isGreaterThanOrEqualTo: (id) object
{
    if ([self convertToNum] >= [object convertToNum])
        return YES;
    else
        return NO;
}

- (BOOL) isGreaterThan: (id) object
{
    if ([self convertToNum] > [object convertToNum])
        return YES;
    else
        return NO;
}

- (BOOL) isNotEqualTo: (id) object
{
    if ([self convertToNum] != [object convertToNum])
        return YES;
    else
        return NO;
}

@end
