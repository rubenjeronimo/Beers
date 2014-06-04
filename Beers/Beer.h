//
//  Beer.h
//  Beers
//
//  Created by Ruben Jeronimo Fernandez on 02/06/14.
//  Copyright (c) 2014 IronHack. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Beer : NSObject{
@private
    NSString *name;
    NSString *color;
    NSUInteger grade;

}

-(NSString *)name;
-(void)setName:(NSString *)newName;
-(NSString *) color;
-(void)setColor:(NSString *)newColor;
-(NSUInteger)grade;
-(void)setGrade:(NSUInteger)newGrade;
@property (nonatomic,strong) NSString *country;




- (void) printBeerInfo;
- (void) printBeerInfoWithHeader:(NSString *)header;
- (void) printBeerInfoWithHeader:(NSString *)header andFooter:(NSString *) footer;
- (void) printBeerInfoWithHeader:(NSString *)header andFooter:(NSString *) footer andNumberOfEmojis:(NSUInteger)emojis;
@end
