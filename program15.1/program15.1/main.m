//
//  main.m
//  program15.1
//
//  Created by YanTian Yu on 15/5/28.
//  Copyright (c) 2015年 YanTian Yu. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSNumber *myNumber, *floatNumber, *intNumber;
        NSInteger myInt;
        
        //integer 型值
        
        intNumber = [NSNumber numberWithInteger:100];
        myInt = [intNumber integerValue];
        NSLog(@"%li", (long) myInt);
        
        //long 型值
        myNumber = [NSNumber numberWithLong:0xabcdef];
        NSLog(@"%lx",[myNumber longValue]);
        
        //char 型值
        myNumber = [NSNumber numberWithChar:'X'];
        NSLog(@"%c", [myNumber charValue]);
        
        //float 型值
        floatNumber = [NSNumber numberWithFloat:100.00];
        NSLog(@"%g",[floatNumber floatValue]);
        
        //double 型值
        myNumber = [NSNumber numberWithDouble:12345e+15];
        NSLog(@"%lg", [myNumber doubleValue]);
        
        //发生错误
        NSLog(@"%li", (long) [myNumber integerValue]);
        
        //验证连个number是否相等
        
        if ( [intNumber isEqualToNumber:floatNumber] == YES)
            NSLog(@"Number are equal");
        else
            NSLog(@"Number are not equal");
        
        //验证一个Number是否小于、等于或大于另一个number
        
        if ( [intNumber compare: myNumber] == NSOrderedAscending)
            NSLog(@"First number is less than second");
    }
    return 0;
}
