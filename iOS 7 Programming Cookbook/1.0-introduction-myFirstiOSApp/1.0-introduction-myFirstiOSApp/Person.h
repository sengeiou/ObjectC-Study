//
//  Person.h
//  1.0-introduction-myFirstiOSApp
//
//  Created by YanTian Yu on 15/6/15.
//  Copyright (c) 2015年 YanTian Yu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject

@property (nonatomic, copy) NSString *firstName;
@property (nonatomic, copy) NSString *lastName;
@property (nonatomic, assign) float currentHeight;

-(void) walkAtKilometersPerHour:(float)paramSpeedKilometersPerHour;
-(void) runAt10KilometersPerHour;

+(float) maximumHeightInCentimeters;
+(float) minimumHeightInCentimeters;

-(id) objectForKeyedSubscript:(id<NSCopying>)paramKey;
-(void) setObject:(id) paramObject forKeyedSubscript:(id<NSCopying>)paramKey;

@end
