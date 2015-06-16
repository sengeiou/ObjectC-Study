//
//  __0_introduction_myFirstiOSAppTests.m
//  1.0-introduction-myFirstiOSAppTests
//
//  Created by YanTian Yu on 15/6/15.
//  Copyright (c) 2015年 YanTian Yu. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>

@interface __0_introduction_myFirstiOSAppTests : XCTestCase

@end

@implementation __0_introduction_myFirstiOSAppTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testExample {
    // This is an example of a functional test case.
    XCTAssert(YES, @"Pass");
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
