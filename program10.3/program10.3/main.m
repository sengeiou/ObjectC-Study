//
//  main.m
//  program10.3
//
//  Created by YanTian Yu on 15/5/28.
//  Copyright (c) 2015年 YanTian Yu. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSString *str1 = @"This is string A";
        NSString *str2 = @"This is string B";
        NSString *res;
        NSComparisonResult compareResult;
        
        NSLog(@"Length of str1: %lu", [str1 length]);
        
        res = [NSString stringWithString:str1];
        NSLog(@"copy: %@", res);
        
        str2 = [str1 stringByAppendingString: str2];
        NSLog(@"Concatentation: %@", str2);
        
        if ([str1 isEqualToString:res] == YES)
            NSLog(@"str1 == res");
        else
            NSLog(@"str1 != res");
        
        compareResult = [str1 compare: str2];
        
        if (compareResult == NSOrderedAscending)
            NSLog(@"str1 < str2");
        else if (compareResult == NSOrderedSame)
            NSLog(@"str1 == str2");
        else
            NSLog(@"str1 > str2");
        
        res = [str1 uppercaseString];
        NSLog(@"Uppercae conversion : %s", [res UTF8String]);
        
        res = [str1 lowercaseString];
        NSLog(@"Lowercase conversion : %@", res);
        
        NSLog(@"Original string : %@", str1);
    }
    return 0;
}
