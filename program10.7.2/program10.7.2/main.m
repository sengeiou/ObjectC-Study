//
//  main.m
//  program10.7.2
//
//  Created by YanTian Yu on 15/5/25.
//  Copyright (c) 2015年 YanTian Yu. All rights reserved.
//

#import "Square.h"

int main()
{
    @autoreleasepool {
        Rectangle *rect = [[Rectangle alloc] initWithWidth: 16 andHeight: 24];
        Square* sq      = [[Square alloc] initWithSide: 10];
        
        NSLog(@"Rectangle area: %.1lf", [rect area]);
        NSLog(@"Square area: %i", [sq area]);
        
        if ([rect area] == 384.0 && [sq area] == 100) {
            NSLog(@"Initialization override successful.");
        }
    }
    
    return 0;
}
