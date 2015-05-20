//
//  Rectangle.h
//  program8.5
//
//  Created by YanTian Yu on 15/5/20.
//  Copyright (c) 2015年 YanTian Yu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "XYPoint.h"
@interface Rectangle : NSObject

@property int width, height;

-(XYPoint *) origin;
-(void) setOrigin: (XYPoint *) pt;
-(void) setWidth:(int) w andHeight:(int) h;
-(int) area;
-(int) perimeter;

@end
