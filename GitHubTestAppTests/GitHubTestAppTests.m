//
//  GitHubTestAppTests.m
//  GitHubTestAppTests
//
//  Created by Florin Sabou on 2/11/13.
//  Copyright (c) 2013 Florin Sabou. All rights reserved.
//

#import "GitHubTestAppTests.h"

@implementation GitHubTestAppTests

- (void)setUp
{
    [super setUp];
    
    // Set-up code here.
}

- (void)tearDown
{
    // Tear-down code here.
    
    [super tearDown];
}

- (void)testSaby
{
    UIApplication *application = [UIApplication sharedApplication];
    STAssertNotNil(application,@"application is nil!");
}

- (void)testExample1
{
    STFail(@"Fail 1");
}

- (void)testSaby2
{
    UIApplication *application = [UIApplication sharedApplication];
    STAssertNotNil(application,@"application is nil!");
}

- (void)testExample
{
    STFail(@"Unit tests are not implemented yet in GitHubTestAppTests");
}



@end
