//
//  Beer.m
//  Beers
//
//  Created by Ruben Jeronimo Fernandez on 02/06/14.
//  Copyright (c) 2014 IronHack. All rights reserved.
//

#import "Beer.h"

@implementation Beer{
    
}
- (void) printBeerInfo{
    NSLog(@"nombre: %@ alcohol %d color: %@",name,alcohol,color);
}

- (void) printBeerInfoWithHeader:(NSString *)header{
    NSLog(@"%@ ",header);
    [self printBeerInfo];
}
- (void) printBeerInfoWithHeader:(NSString *)header andFooter:(NSString *) footer{
    NSLog(@"%@",header);
    [self printBeerInfo];
    NSLog(@"%@",footer);
}
- (void) printBeerInfoWithHeader:(NSString *)header andFooter:(NSString *) footer andNumberOfEmojis:(NSUInteger)emojis{
    NSLog(@"%@ %@ %d",header,footer,emojis);
    [self printBeerInfo];
}


@end
