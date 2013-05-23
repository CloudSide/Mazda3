//
//  Mazda3AppDelegate.m
//  Mazda3
//
//  Created by xiaoli on 10-4-14.
//  Copyright bict 2010. All rights reserved.
//

#import "Mazda3AppDelegate.h"
#import "Mazda3ViewController.h"

@implementation Mazda3AppDelegate

@synthesize window;
@synthesize viewController;


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {    
    
	
	[[UIApplication sharedApplication] setStatusBarHidden:YES];
	[[UIApplication sharedApplication] setStatusBarOrientation:UIInterfaceOrientationLandscapeRight];
	
	viewController = [[Mazda3ViewController alloc] initWithNibName:@"Mazda3ViewController" bundle:nil];
	[window addSubview:viewController.view];
	
	
    [window makeKeyAndVisible];

	return YES;
}


- (void)dealloc {
	
    [viewController release];
    [window release];
    [super dealloc];
}






@end
