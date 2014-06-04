//
//  AppDelegate.m
//  Beers
//
//  Created by Ruben Jeronimo Fernandez on 02/06/14.
//  Copyright (c) 2014 IronHack. All rights reserved.
//

#import "AppDelegate.h"
#import "Beer.h"
#import "Person.h"
@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    /*self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    */
     Beer *mahou=[[Beer alloc]init];
    Beer *cruzcampo=[Beer new];
    Beer *estrellaDamm=[[Beer alloc]init];
    Beer *coronita=[[Beer alloc]init];
    
    //[mahou printBeerInfoWithHeader:(@"---------")];
    //[mahou printBeerInfoWithHeader:(@"---------") andFooter:(@"jdjdjdjdj")];
    //[mahou printBeerInfoWithHeader:(@"jdjdjdjdj") andFooter:(@"jdjdjdjdj") andNumberOfEmojis:2];
    
    
    [mahou setName:@"mahou"];
    //[cruzcampo setName:@"cruzcampo"];
    cruzcampo.name=@"cruzcampo";
    [estrellaDamm setName:@"estrellaDamm"];
    [coronita setName:@"coronita"];
    [mahou setColor:@"amarillo"];
    [cruzcampo setColor:@"verde"];
    [estrellaDamm setColor:@"negro"];
    [coronita setColor:@"amarillo"];
    [mahou setGrade:5];
    [cruzcampo setGrade:4];
    [estrellaDamm setGrade:3];
    [coronita setGrade:6];
    
    [mahou printBeerInfo];
    [cruzcampo printBeerInfo];
    
    Person *uno= [[Person alloc]init];
    
    uno.name=@"jacinto";
    uno.age=22;
    uno.adress=@"calle cosa fina 22";
    
    
    Person *Groucho=[[Person alloc]init];
    Person *Harpo=[[Person alloc]initWithName:@"Groucho"];
    Person *Chico=[[Person alloc]initWithName:@"Chico" andAdress:@"C/de los hermanos 1"];
    Person *Zeppo=[[Person alloc]initWithName:@"Zeppo" andAdress:@"C/de los hermanos 2" age:30];
    
    NSArray *personList=[NSArray arrayWithObjects:Groucho,Harpo,Chico,Zeppo, nil];
    NSArray *personList2=@[Chico,Harpo];
    Person *p=[[Person alloc]initWithName:@"pepe"];
    NSMutableArray *partyList= [NSMutableArray arrayWithObjects:Groucho,Harpo, nil];
    for (int i=0; i<=100; i++) {
        Person *p =[Person personWithName:[NSString stringWithFormat:@"persona %d",i]];
        [partyList addObject:p];
    }
    for (Person *nombre in partyList) {
        NSLog(@"%@",nombre.name);
    }
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
