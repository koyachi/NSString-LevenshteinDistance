//
//  NSString_LevenshteinDistanceDemoTests.m
//  NSString+LevenshteinDistanceDemoTests
//
//  Created by koyachi on 2014/04/13.
//  Copyright (c) 2014年 koyachi. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "NSString+LevenshteinDistance.h"

@interface NSString_LevenshteinDistanceDemoTests : XCTestCase

@end

@implementation NSString_LevenshteinDistanceDemoTests

- (void)setUp
{
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown
{
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testExample
{
    NSString *a = @"foo@bar.com";
    NSString *b = @"foo@bar.con";
    NSUInteger distance = [a levenshteinDistanceTo:b];
    NSLog(@"distance = %d", distance);
    XCTAssert(distance == 1, @"distance == 1");

    a = @"foo@bar.com";
    b = @"foo@bar.cmo";
    distance = [a levenshteinDistanceTo:b];
    NSLog(@"distance = %d", distance);
    XCTAssert(distance == 2, @"distance == 2");
}

@end
