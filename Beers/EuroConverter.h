//
//  EuroConverter.h
//  Beers
//
//  Created by Ruben Jeronimo Fernandez on 03/06/14.
//  Copyright (c) 2014 IronHack. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface EuroConverter : NSObject
@property (nonatomic) CGFloat money;


+(int)convertFromEuroToPeseta:(float)euros;
+(float)convertFromPesetaToEuro:(int)pesetas;
-(float) convertToEuro;
-(long) convertToPeseta;
@end
