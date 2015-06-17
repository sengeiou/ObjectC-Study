//
//  Jaguar.h
//  
//
//  Created by YanTian Yu on 15/6/16.
//
//

#import <Foundation/Foundation.h>
#import "Car.h"

@interface Jaguar : NSObject <Car>

@property (nonatomic, copy) NSArray *wheels;
@property (nonatomic, strong) UIColor *bodyColor;
@property (nonatomic, copy) NSArray *doors;

@end
