//
//  main.m
//  prog10-3
//
//  Created by YanTian Yu on 15/5/24.
//  Copyright (c) 2015年 YanTian Yu. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        enum month { january = 1, february, march, april, may, june,july, august, september, october, november, december};
        enum month amonth;
        int days;
        
        NSLog(@"Enter month number: ");
        scanf("%i", &amonth);
        
        switch (amonth){
            case january:
            case march:
            case may:
            case july:
            case august:
            case october:
            case december:
                days = 31;
                break;
            case april:
            case june:
            case september:
            case november:
                days = 30;
                break;
            case february:
                days = 28;
                break;
            default:
                NSLog(@"bad month number");
                days = 0;
                break;
        }
        
        if(days != 0){
            NSLog(@"Number of days is %i", days);
        }
        
        if(amonth == february){
            NSLog(@"...or 29 if it's a leap year");
        }
    }
    return 0;
}
