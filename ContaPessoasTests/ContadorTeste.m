//
//  ContaPessoasTests.m
//  ContaPessoasTests
//
//  Created by Guilherme Bayma on 2/18/15.
//  Copyright (c) 2015 Vinicius Miana. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "Contador.h"

@interface ContadorTests : XCTestCase

@end

@implementation ContadorTests

// testes

- (void)testContaMeninos {
    Contador *c = [[Contador alloc] init];
    [c maisUmCueca];
    XCTAssert(([c getBoys] == 1), @"Pass");
    XCTAssert(([c getGirls] == 0), @"Pass");
    XCTAssert(([c getTotal] == 1), @"Pass");
}

- (void)testContaMeninas {
    Contador *c = [[Contador alloc] init];
    [c maisUmaGata];
    XCTAssert(([c getGirls] == 1), @"Pass");
    XCTAssert(([c getBoys] == 0), @"Pass");
    XCTAssert(([c getGirls] == 1), @"Pass");
}


@end
