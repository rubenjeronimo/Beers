//
//  EuroConverterViewController.m
//  Beers
//
//  Created by Ruben Jeronimo Fernandez on 03/06/14.
//  Copyright (c) 2014 IronHack. All rights reserved.
//

#import "EuroConverterViewController.h"
#import "EuroConverter.h"
@interface EuroConverterViewController ()
@property (weak, nonatomic) IBOutlet UITextField *txtAmount;

@end

@implementation EuroConverterViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}


- (IBAction)convertMoney:(id)sender {
    
    CGFloat number= [self.txtAmount.text floatValue];
    NSLog(@"%.2f",number);
    NSLog(@"%.2f",[EuroConverter convertFromPesetaToEuro:number]);
    NSLog(@"🐻");
    
    
    
}

@end
