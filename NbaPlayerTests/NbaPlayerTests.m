//
//  NbaPlayerTests.m
//  NbaPlayerTests
//
//  Created by Mihajlo Jezdic on 28.10.21..
//

#import <XCTest/XCTest.h>
#import <NbaPlayer/MyPlayer.h>

@interface NbaPlayerTests : XCTestCase

@property MyPlayer *instance;

@end

@implementation NbaPlayerTests

- (void)setUp {
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
}

- (void)testExample {
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
    _instance = [[MyPlayer alloc]initWithInteger:5000];
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
