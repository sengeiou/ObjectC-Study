//
//  main.m
//  program5
//
//  Created by YanTian Yu on 15/5/17.
//  Copyright (c) 2015年 YanTian Yu. All rights reserved.
//

//代码清单5-3

//#import <Foundation/Foundation.h>
//
//int main(int argc, const char * argv[]) {
//    @autoreleasepool {
//        int n, triangularNumber;
//        
//        NSLog(@"TABLE OF TRIANGULAR NUMBERs");
//        NSLog(@" n Sum from 1 to n");
//        
//        triangularNumber = 0;
//        
//        for( n = 1; n <= 10; ++n){
//            triangularNumber += n;
//            NSLog(@" %2i             %i", n, triangularNumber);
//        }
//    }
//    return 0;
//}

//代码清单5-4

//#import <Foundation/Foundation.h>
//
//int main(int argc, char * argv[])
//{
//    @autoreleasepool {
//        int n, number, triangularNumber;
//        
//        NSLog(@"What triangular number do you want?");
//        scanf("%i", &number);
//        
//        triangularNumber = 0;
//        
//        for( n = 1; n <= number; ++n){
//            triangularNumber += n;
//            NSLog(@" %2i             %i", n, triangularNumber);
//        }
//    }
//    return 0;
//}

//代码清单5-7

#import <Foundation/Foundation.h>

int main(int argc, char * argv[])
{
    @autoreleasepool {
        unsigned int u, v, temp;
        
        NSLog(@"Please type in two nonnegative integers");
        scanf("%u%u",&u, &v);
        
        while (v != 0){
            temp = u % v;
            u = v;
            v = temp;
        }
        
        NSLog(@"Their greatest common divisor is %u", u);
    }
}