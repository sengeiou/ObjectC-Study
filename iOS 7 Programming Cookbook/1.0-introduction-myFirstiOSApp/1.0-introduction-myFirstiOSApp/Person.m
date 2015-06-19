//
//  Person.m
//  1.0-introduction-myFirstiOSApp
//
//  Created by YanTian Yu on 15/6/15.
//  Copyright (c) 2015年 YanTian Yu. All rights reserved.
//

#import "Person.h"

NSString *const kFirstNameKey = @"firstName";
NSString *const kLastNameKey = @"lastName";

@implementation Person

-(void) walkAtKilometersPerHour:(float)paramSpeedKilometersPerHour{}

-(void) runAt10KilometersPerHour{
    [self walkAtKilometersPerHour:10.0f];
}

-(void) singSong:(NSData *) paramSongData loudly:(BOOL)paramLoudly{}

+(float) maximumHeightInCentimeters{
    return 250.0f;
}

+(float) minimumHeightInCentimeters{
    return 40.0f;
}

-(id) objectForKeyedSubscript:(id<NSCopying>)paramKey
{
    NSObject<NSCopying> *keyAsObject = (NSObject<NSCopying> *) paramKey;
    
    if([keyAsObject isKindOfClass:[NSString class]]){
        NSString *keyAsString = (NSString *)keyAsObject;
        if([keyAsString isEqualToString:kFirstNameKey] || [keyAsString isEqualToString:kLastNameKey]){
            return [self valueForKey:keyAsString];
        }
    }
    return nil;
}

-(void) setObject:(id)paramObject forKeyedSubscript:(id<NSCopying>)paramKey
{
    NSObject<NSCopying> *keyAsObject = (NSObject<NSCopying> *)paramKey;
    if([keyAsObject isKindOfClass:[NSString class]]){
        NSString *keyAsString = (NSString *)keyAsObject;
        if([keyAsString isEqualToString:kFirstNameKey] || [keyAsString isEqualToString:kLastNameKey]){
            [self setValue:paramObject forKey:keyAsString];
        }
    }
}

@end
