//
//  main.m
//  program8.5
//
//  Created by YanTian Yu on 15/5/20.
//  Copyright (c) 2015年 YanTian Yu. All rights reserved.
//

#import "Rectangle.h"
#import "XYPoint.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Rectangle *myRect = [[Rectangle alloc] init];
        XYPoint *myPoint = [[XYPoint alloc] init];
        
        [myPoint setX:100 andY:200];
        [myRect setWidth:5 andHeight:8];
        
        myRect.origin = myPoint;
        
        NSLog(@"Rectangle w = %i, h = %i", myRect.width, myRect.height);
        NSLog(@"Origin at (%i, %i)", myRect.origin.x, myRect.origin.y);
        
        [myPoint setX:1 andY:2];
        NSLog(@"After reset the 'myPoint', Origin at (%i, %i)", myRect.origin.x, myRect.origin.y);
        
        NSLog(@"Area = %i, Perimeter = %i", myRect.area, myRect.perimeter);
    }
    return 0;
}
