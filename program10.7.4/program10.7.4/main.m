//
//  main.m
//  program10.7.4
//
//  Created by YanTian Yu on 15/5/25.
//  Copyright (c) 2015年 YanTian Yu. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        typedef enum{ Sunday = 0, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday } Day;
        
        Day aDay;
        NSLog(@"Enter a number:");
        scanf("%i", &aDay);
        
        switch (aDay) {
            case Sunday:
                NSLog(@"That day is Sunday.");
                break;
            case Monday:
                NSLog(@"That day is Monday.");
                break;
            case Tuesday:
                NSLog(@"That day is Tuesday.");
                break;
            case Wednesday:
                NSLog(@"That day is Wednesday.");
                break;
            case Thursday:
                NSLog(@"That day is Thursday.");
                break;
            case Friday:
                NSLog(@"That day is Friday.");
                break;
            case Saturday:
                NSLog(@"That day is Saturday.");
                break;
                
            default:
                break;
        }
    }
    return 0;
}
