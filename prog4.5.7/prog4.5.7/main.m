//
//  main.m
//  prog4.5.7
//
//  Created by YanTian Yu on 15/5/16.
//  Copyright (c) 2015年 YanTian Yu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Rectangle : NSObject

-(void) setWidth : (int) w;
-(void) setHeight : (int) h;
-(int) width;
-(int) height;
-(int) area;
-(int) perimeter;

@end

@implementation Rectangle
{
    int width;
    int height;
}

-(void) setWidth:(int)w
{
    width = w;
}

-(void) setHeight:(int)h
{
    height = h;
}

-(int) width
{
    return width;
}

-(int) height
{
    return height;
}

-(int) area
{
    return width * height;
}

-(int) perimeter
{
    return (width + height)*2;
}

@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Rectangle * rectangle = [[Rectangle alloc] init];
        
        [rectangle setWidth:20];
        [rectangle setHeight:10];
        NSLog(@"The rectangle's area is %i",[rectangle area]);
        NSLog(@"The rectangle's perimeter is %i",[rectangle perimeter]);
    }
    return 0;
}
