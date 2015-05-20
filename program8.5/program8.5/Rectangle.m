//
//  Rectangle.m
//  program8.5
//
//  Created by YanTian Yu on 15/5/20.
//  Copyright (c) 2015年 YanTian Yu. All rights reserved.
//

#import "Rectangle.h"

@implementation Rectangle
{
    XYPoint *origin;
}

@synthesize width, height;

-(void) setWidth:(int)w andHeight: (int) h
{
    width = w;
    height = h;
}

-(void) setOrigin:(XYPoint *)pt
{
    if( !origin ){
        origin = [[XYPoint alloc] init];
    }
    origin.x = pt.x;
    origin.y = pt.y;
}

-(int) area
{
    return width * height;
}

-(int) perimeter
{
    return (width + height) * 2;
}

-(XYPoint *) origin
{
    return origin;
}

@end
