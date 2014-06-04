//
//  EuroCalculatorViewController.m
//  Beers
//
//  Created by Ruben Jeronimo Fernandez on 03/06/14.
//  Copyright (c) 2014 IronHack. All rights reserved.
//

#import "EuroCalculatorViewController.h"


@implementation EuroCalculatorViewController

- (IBAction)B1:(id)sender {
    UIButton *numero = (UIButton *) sender;
    
    if(![sender isKindOfClass:[UIButton class]]){
        return;
    }
    NSLog(@"%d",numero.tag);
    NSLog(@"%@", [numero titleLabel].text);
}
@end
