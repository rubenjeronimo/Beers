//
//  AlphaViewController.m
//  Beers
//
//  Created by Ruben Jeronimo Fernandez on 03/06/14.
//  Copyright (c) 2014 IronHack. All rights reserved.
//

#import "AlphaViewController.h"

@interface AlphaViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *image;

@end

@implementation AlphaViewController
- (IBAction)alphaValue:(id)sender {
    UISlider *slider = (UISlider *)sender;
    self.image.alpha=[slider value];
    self.image.alpha=slider.value;
    [self.image setAlpha:slider.value];
    [self.image setAlpha:[slider value]];
    
    
}
#define URL @"http://diyfather.com/wp-content/uploads/darth-vader-cat1.jpg"
- (IBAction)downloadImage:(id)sender {
    NSURL *theURL = [NSURL URLWithString:URL];
    NSData *data= [NSData dataWithContentsOfURL:theURL];
    UIImage *downImage=[UIImage imageWithData:data];
    self.image.image=downImage;
    
}

- (IBAction)changeImage:(id)sender {
    static BOOL toogle=NO;
    toogle = !toogle;
    if (toogle){
        self.image.image=[UIImage imageNamed: @"78299568.png"];
    }
    else{
        self.image.image=[UIImage imageNamed: @"doors_fallas.jpg"];
    }
        
   // UIButton *b=(UIButton *)sender;
    //if (self.image.image=[UIImage imageNamed:@"doors_fallas.jpg"]) {
        
    //}
    //else if(self.image.image=[UIImage imageNamed:@"78299568.png"]){
      //  self.image.image=[UIImage imageNamed: @"doors_fallas.jpg"];
    //}
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
