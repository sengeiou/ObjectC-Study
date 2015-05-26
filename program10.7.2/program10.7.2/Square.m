//
//  Square.m
//  program10.7.2
//
//  Created by YanTian Yu on 15/5/25.
//  Copyright (c) 2015年 YanTian Yu. All rights reserved.
//

#import "Square.h"

@implementation Square

@synthesize sides;

-(id) initWithSide:(int)side
{
    self = [super init];
    if(self){
        [self setSides:side];
    }
    return self;
}

-(int) area
{
    return sides * sides;
}

-(int) perimeter
{
    return 2 * (sides + sides);
}

@end
