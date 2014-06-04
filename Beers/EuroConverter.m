//
//  EuroConverter.m
//  Beers
//
//  Created by Ruben Jeronimo Fernandez on 03/06/14.
//  Copyright (c) 2014 IronHack. All rights reserved.
//

#import "EuroConverter.h"

@implementation EuroConverter
#define CONVERT_VALUE 166.386;
+(int)convertFromEuroToPeseta:(float)euros{
    return euros * CONVERT_VALUE;
}
+(float)convertFromPesetaToEuro:(int)pesetas{
    return pesetas / CONVERT_VALUE;
}

-(float) convertToEuro{
    return [EuroConverter convertFromPesetaToEuro :self.money];
}
-(long) convertToPeseta{
    return [EuroConverter convertFromEuroToPeseta:self.money];
}


@end
