//
//  Person.m
//  Beers
//
//  Created by Ruben Jeronimo Fernandez on 03/06/14.
//  Copyright (c) 2014 IronHack. All rights reserved.
//

#import "Person.h"

@implementation Person




+(id)personWithName:(NSString *) name{
    return [[Person alloc]initWithName:name];
    
}


+(id)personWithName:(NSString *) name andAdress:(NSString *)adress{
    return [[Person alloc]initWithName:name andAdress:adress];
    
}
-(id)initWithName:(NSString *)name{
    self=[self initWithName:name andAdress:@"C/La trucha" age:18];
    return self;
}

-(id)initWithName:(NSString *)name andAdress:(NSString *) adress{
    self=[super init];
    if (self){
        _name=name;
        _adress=adress;
    }
    return self;
}

-(id)initWithName:(NSString *)name andAdress:(NSString *) adress age:(NSUInteger)age{
    self=[super init];
    if (self){
        self.name = @"<#string#>";
        [self setName: @"mmmm"];
        
        _name=name;
        _adress=adress;
        _age=age;
    }
    return self;
}

-(id)init{
    self=[self initWithName:@"John Doe" andAdress:@"C/La trucha" age:18];
    return self;
    
}


@end
