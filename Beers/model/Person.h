//
//  Person.h
//  Beers
//
//  Created by Ruben Jeronimo Fernandez on 03/06/14.
//  Copyright (c) 2014 IronHack. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject
@property (nonatomic, strong) NSString *name;
@property (nonatomic) NSUInteger age;
@property (nonatomic, strong) NSString *adress;
@property (nonatomic,getter = isMarried) BOOL married;


+(id)personWithName:(NSString *) name;
+(id)personWithName:(NSString *) name andAdress:(NSString *)adress;


-(id)initWithName:(NSString *)name;
-(id)initWithName:(NSString *)name andAdress:(NSString *) adress;
-(id)initWithName:(NSString *)name andAdress:(NSString *) adress age:(NSUInteger)age;
@end
