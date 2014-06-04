//
//  PersonTests.m
//  Beers
//
//  Created by Ruben Jeronimo Fernandez on 04/06/14.
//  Copyright (c) 2014 IronHack. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "Person.h"
@interface PersonTests : XCTestCase

@end

@implementation PersonTests

#define TEST_NAME @"John Doe"
#define TEST_AGE 18
#define TEST_ADRESS @"C/La trucha"

#define OT_NAME @"jdjdjdj"
#define OT_AGE 33
#define OT_ADRESS @"la puta calle"

-(void)testCanCreateAPerson{
    Person *p=[[Person alloc]init];
    XCTAssertNotNil(p, @"omg!💀");
    XCTAssertEqualObjects(TEST_NAME, p.name,@"Expected %@ found %@ 🐣",TEST_NAME,p.name);
    XCTAssertEqual(p.age, TEST_AGE,@"");
    XCTAssertEqualObjects(TEST_ADRESS, p.adress, @"Expected %@ found %@", TEST_ADRESS,p.adress);


}


-(void) testCanCreateAPersonWithName{
    Person *p=[[Person alloc]initWithName:OT_NAME];
    XCTAssertNotNil(p, @"omg!💀");
    XCTAssertEqualObjects(OT_NAME, p.name,@"Expected %@ found %@ 🐣",OT_NAME,p.name);
    XCTAssertEqual(p.age, TEST_AGE,@"");
    XCTAssertEqualObjects(TEST_ADRESS, p.adress, @"Expected %@ found %@",TEST_ADRESS,p.adress);
    
}

-(void) testCanCreateAPersonWithNameAndAdress{
    Person *p=[[Person alloc]initWithName:OT_NAME  andAdress:OT_ADRESS];
    XCTAssertNotNil(p, @"omg!💀");
    XCTAssertEqualObjects(OT_NAME, p.name,@"Expected %@ found %@ 🐣",OT_NAME, p.name);
    //XCTAssertEqual(p.age, TEST_AGE,@"");
    XCTAssertEqualObjects(OT_ADRESS, p.adress, @"Expected %@ found %@",OT_ADRESS,p.adress);

    
}

-(void) testCanCreateAPersonWithNameAndAdressAndAge{
    Person *p=[[Person alloc]initWithName:OT_NAME andAdress:OT_ADRESS age:OT_AGE];
    XCTAssertNotNil(p, @"omg!💀");
    XCTAssertEqualObjects(OT_NAME, p.name,@"Expected %@ found %@ 🐣",OT_NAME,p.name);
    XCTAssertEqual(p.age, OT_AGE,@"");
    XCTAssertEqualObjects(OT_ADRESS, p.adress, @"Expected %@ found %@", OT_ADRESS,p.adress);

}

@end
