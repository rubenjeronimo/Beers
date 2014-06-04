//
//  BeerListTests.m
//  Beers
//
//  Created by Ruben Jeronimo Fernandez on 04/06/14.
//  Copyright (c) 2014 IronHack. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "BeerList.h"
#import "beer.h"
@interface BeerListTests : XCTestCase

@end

@implementation BeerListTests
-(void) testCanCreateABeerList{
    BeerList *allBeers = [[BeerList alloc]init];
    XCTAssertNotNil(allBeers, @"");
    XCTAssertEqual(0, [allBeers count], @"");
}


-(void)testCanAddABeerToTheList{
    BeerList *allBeers=[[BeerList alloc]init];
    XCTAssertNotNil(allBeers, @"");
    XCTAssertEqual(0, [allBeers count], @"");
    Beer *mahou = [[Beer alloc]init];
    [allBeers addBeer:mahou];
    XCTAssertEqual(1, [allBeers count], @"");
}


@end
