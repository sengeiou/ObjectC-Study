//
//  main.m
//  program16-TempFiles
//
//  Created by YanTian Yu on 15/6/2.
//  Copyright (c) 2015年 YanTian Yu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSString+TempFiles.h"
#define MAXCHARS 60

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSString *tempdir, *tempFileName, *shortenedDir;
        NSLog(@"Temporary Directory is: %@", tempdir);
        shortenedDir = [[tempdir stringByAppendingString:tempFileName] substringToIndex:MAXCHARS];
        
        NSLog(@"Temporary file stored as : %@", shortenedDir);
    }
    return 0;
}
