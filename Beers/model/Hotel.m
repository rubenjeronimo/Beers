//
//  Hotel.m
//  Beers
//
//  Created by Ruben Jeronimo Fernandez on 05/06/14.
//  Copyright (c) 2014 IronHack. All rights reserved.
//

#import "Hotel.h"


@interface Hotel()
@property (nonatomic,strong) NSMutableDictionary *rooms;

@implementation Hotel

-(NSMutableDictionary *) rooms{
    if (_rooms == nil) {
    _rooms =[[NSMutableDictionary alloc]init];
    
    }
    return _rooms;
}

//Hotel *palace=[[Hotel alloc]init];

-(void)addPerson:(Person *)p toRoom:(NSString *)room{
    [self.rooms setObject:p forKey:room];
    }
    
    
    


-(void)listRoom{
    
}

@end
