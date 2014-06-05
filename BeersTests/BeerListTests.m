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
-(void) testCanCreateABeerListKVC{
    BeerList *allBeers = [[BeerList alloc]init];
    XCTAssertNotNil(allBeers, @"");
    XCTAssertEqual(0, [[allBeers valueForKey:@"count"]integerValue], @"");
}

-(void)testCanAddABeerToTheList{
    BeerList *allBeers=[[BeerList alloc]init];
    XCTAssertNotNil(allBeers, @"");
    XCTAssertEqual(0, [allBeers count], @"");
    Beer *mahou = [[Beer alloc]init];
    [allBeers addBeer:mahou];
    XCTAssertEqual(1, [allBeers count], @"");
}

-(void)testCanAddABeerToTheListKVC{
    BeerList *allBeers=[[BeerList alloc]init];
    XCTAssertNotNil(allBeers, @"");
    XCTAssertEqual(0, [[allBeers valueForKey:@"count"]integerValue], @"");
    Beer *mahou = [[Beer alloc]init];
    [allBeers addBeer:mahou];
    XCTAssertEqual(1, [[allBeers valueForKey:@"count"]integerValue], @"");
}

-(void)testCanRemoveABeerToTheList{
    BeerList *allBeers=[[BeerList alloc]init];
    XCTAssertNotNil(allBeers, @"");
    XCTAssertEqual(0, [allBeers count], @"");
    Beer *mahou=[[Beer alloc]init];
    [allBeers addBeer:mahou];
    XCTAssertEqual(1, [allBeers count], @"");
    [allBeers removeBeer:mahou];
    XCTAssertEqual(0, [allBeers count], @"");
}

-(void)testCanRemoveABeerToTheListKVC{
    BeerList *allBeers=[[BeerList alloc]init];
    XCTAssertNotNil(allBeers, @"");
    XCTAssertEqual(0, [[allBeers valueForKey:@"count"]integerValue], @"");
    Beer *mahou=[[Beer alloc]init];
    [allBeers addBeer:mahou];
    XCTAssertEqual(1, [[allBeers valueForKey: @"count"]integerValue], @"");
    [allBeers removeBeer:mahou];
    XCTAssertEqual(0, [[allBeers valueForKey: @"count"]integerValue], @"");
}

-(void) testAllBeers{
    BeerList *allBeers = [[BeerList alloc]init];
    XCTAssertTrue([[allBeers allBeers]count]==0 , @"");
    for (int i=0; i<100; i++) {
        Beer *beer= [[Beer alloc]init];
        beer.name=[NSString stringWithFormat:@"Cerveza %i",i ];
        [allBeers addBeer:beer];
        
    }
    NSArray *beersArray=[allBeers allBeers];
    XCTAssertTrue(allBeers.count==100, @"");
    for (int i=0; i<[beersArray count]; i++) {
        Beer *b = beersArray[i];
        NSString *s=[NSString stringWithFormat:@"Cerveza %i",i ];
        XCTAssertEqualObjects(b.name, s, @"");
    }
    int p=0;
    for (Beer *beerToTest in [allBeers allBeers]) {
        NSString *s=[NSString stringWithFormat:@"Cerveza %i",p ];
        p++;
        XCTAssertEqualObjects(beerToTest.name, s, @"");
    }
    [[allBeers allBeers]enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop){
        Beer *beerToTest=(Beer *) obj;
        NSLog(@"%@ %d",beerToTest.name,idx);
        *stop = idx>50 ? YES:NO;
        
    }];
}

-(void) testAllBeersKVC{
    BeerList *allBeers = [[BeerList alloc]init];
    XCTAssertTrue([[allBeers allBeers]count]==0 , @"");
    for (int i=0; i<100; i++) {
        Beer *beer= [[Beer alloc]init];
        beer.name=[NSString stringWithFormat:@"Cerveza %i",i ];
        [allBeers addBeer:beer];
        
    }
    NSArray *beersArray=[allBeers allBeers];
    XCTAssertTrue(allBeers.count==100, @"");
    for (int i=0; i<[[beersArray valueForKey: @"count"]integerValue]; i++) {
        Beer *b = beersArray[i];
        NSString *s=[NSString stringWithFormat:@"Cerveza %i",i ];
        XCTAssertEqualObjects(b.name, s, @"");
    }
    int p=0;
    for (Beer *beerToTest in [allBeers allBeers]) {
        NSString *s=[NSString stringWithFormat:@"Cerveza %i",p ];
        p++;
        XCTAssertEqualObjects(beerToTest.name, s, @"");
    }
    [[allBeers allBeers]enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop){
        Beer *beerToTest=(Beer *) obj;
        NSLog(@"%@ %d",beerToTest.name,idx);
        *stop = idx>50 ? YES:NO;
        
    }];
}


-(void)testCountBeers{
    BeerList *allBeers=[[BeerList alloc]init];
    for (CGFloat i=0; i<100; i++) {
        [allBeers addBeer:[[Beer alloc]init]];
    }
    XCTAssertTrue(allBeers.count==100, @"");
}

-(void)testCountBeersKVC{
    BeerList *allBeers=[[BeerList alloc]init];
    for (CGFloat i=0; i<100; i++) {
        [allBeers addBeer:[[Beer alloc]init]];
    }
    XCTAssertTrue(allBeers.count==100, @"");
    
}

-(void)testCantChangeCountOfBeers{
    BeerList *allBeers = [[BeerList alloc]init];
    XCTAssertTrue(allBeers, @"");
}

-(void)testCantChangeCountOfBeersKVC{
    BeerList *allBeers = [[BeerList alloc]init];
    XCTAssertTrue(allBeers, @"");
}


@end
