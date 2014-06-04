//
//  Beer.m
//  Beers
//
//  Created by Ruben Jeronimo Fernandez on 02/06/14.
//  Copyright (c) 2014 IronHack. All rights reserved.
//

#import "Beer.h"

@implementation Beer
@synthesize country=_country;


-(NSString *)name{
    return self->name;
}
-(void)setName:(NSString *)newName{
    self->name=newName;
}
-(NSString *) color{
    return self->color;
}
-(void)setColor:(NSString *)newColor{
    self->color=newColor;
}
-(NSUInteger)grade{
    return self->grade;
}
-(void)setGrade:(NSUInteger)newGrade{
    self->grade=newGrade;
}

-(NSString *)country{
    return self->_country;
}
-(void) setCountry:(NSString *)newCountry{
    self->_country=newCountry;
}
- (void) printBeerInfo{
    NSLog(@"nombre: %@ alcohol %d color: %@",name,grade,color);
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
