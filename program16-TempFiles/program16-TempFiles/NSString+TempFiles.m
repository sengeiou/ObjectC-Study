//
//  NSString+NSString___TempFiles.m
//  program16-TempFiles
//
//  Created by YanTian Yu on 15/6/2.
//  Copyright (c) 2015年 YanTian Yu. All rights reserved.
//

#import "NSString+TempFiles.h"

@implementation NSString (TempFiles)

+ (NSString *) temporaryFileName
{
    return [[NSProcessInfo processInfo] globallyUniqueString];
}

@end
