//
//  BeerList.h
//  Beers
//
//  Created by Ruben Jeronimo Fernandez on 04/06/14.
//  Copyright (c) 2014 IronHack. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Beer.h"
@interface BeerList : NSObject


-(NSUInteger) count;
-(void)addBeer:(Beer *)beer;
-(void)removeBeer:(Beer *)beer;
-(NSArray *) allBeers;
@end
