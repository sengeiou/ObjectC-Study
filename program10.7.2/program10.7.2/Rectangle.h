//
//  Rectangle.h
//  program10.7.2
//
//  Created by YanTian Yu on 15/5/25.
//  Copyright (c) 2015年 YanTian Yu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "XYPoint.h"

@interface Rectangle : NSObject

@property double width, height;

-(id) initWithWidth:(int) w andHeight: (int) h;
-(XYPoint *) origin;
-(void) setOrigin: (XYPoint *) pt;
-(void) setWidth:(double) w andHeight: (double) h;
-(double) area;
-(double) perimeter;

-(Rectangle*) intersect: (Rectangle*) rect;
-(void) draw;

@end
