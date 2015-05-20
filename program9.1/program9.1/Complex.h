//
//  Complex.h
//  program9.1
//
//  Created by YanTian Yu on 15/5/20.
//  Copyright (c) 2015年 YanTian Yu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Complex : NSObject

@property double real, imaginary;
-(void) print;
-(void) setReal:(double)a andImaginary: (double) b;
-(Complex *) add:(Complex *) f;

@end
