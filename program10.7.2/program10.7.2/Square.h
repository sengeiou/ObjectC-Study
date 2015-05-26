//
//  Square.h
//  program10.7.2
//
//  Created by YanTian Yu on 15/5/25.
//  Copyright (c) 2015年 YanTian Yu. All rights reserved.
//

#import "Rectangle.h"

@interface Square : Rectangle

@property int sides;

-(id) initWithSide:(int) side;
-(int) area;
-(int) perimeter;

@end
