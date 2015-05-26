//
//  main.m
//  program12
//
//  Created by YanTian Yu on 15/5/26.
//  Copyright (c) 2015年 YanTian Yu. All rights reserved.
//

//#import <Foundation/Foundation.h>
//
//int main(int argc, const char * argv[]) {
//    @autoreleasepool {
//        // insert code here...
//        NSLog(@"Hello, World!");
//    }
//    return 0;
//}

//#import <Foundation/Foundation.h>
//#define ABSOLUTE_VALUE(x) ((x) < 0 ? (x) * -1 : (x))
//
//int main(int argc, char * argv[]){
//    @autoreleasepool {
//        int num = -397;
//        int delta = 60;
//        
//        NSLog(@"The absolute of %d is % d.", num + delta, ABSOLUTE_VALUE(num + delta));
//    }
//}

#import <Foundation/Foundation.h>
#define IS_LOWER_CASE(x) ( (x) >= 'a' ) && ( (x) <= 'z' )
#define IS_UPPER_CASE(x) ( (x) >= 'A' ) && ( (x) <= 'Z' )
#define IS_ALPHABETIC(x) ( (IS_LOWER_CASE(x)) || (IS_UPPER_CASE(x)) )

int main(){
    @autoreleasepool {
        char ch = '4';
        int result = IS_ALPHABETIC(ch);
        if(result == 1)
            NSLog(@"%c is alphabetic. Macro returned %d", ch, result);
        else
            NSLog(@"%c is not alphabetic. Macro return %d", ch, result);
    }
}
