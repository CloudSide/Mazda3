    //
//  CarViewController.m
//  Mazda3
//
//  Created by xiaoli on 10-4-14.
//  Copyright 2010 bict. All rights reserved.
//

#import "CarViewController.h"


@implementation CarViewController

@synthesize shadowImgView,carImgView;

/*
 // The designated initializer.  Override if you create the controller programmatically and want to perform customization that is not appropriate for viewDidLoad.
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    if ((self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil])) {
        // Custom initialization
    }
    return self;
}
*/

- (id)init {

	if (self = [super init]) {
		
		flag = 21;
		color_flag = 1;
	
		shadowImgView = [[UIImageView alloc] initWithFrame:CGRectMake(0,0, 480, 360*480/640)];
		carImgView = [[UIImageView alloc] initWithFrame:CGRectMake(0,0, 480, 360*480/640)];
	
		[self.view addSubview:shadowImgView];
		[self.view addSubview:carImgView];
		
		CGAffineTransform transform = self.view.transform;
		transform = CGAffineTransformRotate(transform, (M_PI / 2.0));
		
		
		self.view.transform = transform;
		
		CGRect newFrame = self.view.frame;
		newFrame.origin.x = -190;
		newFrame.origin.y = 0;
		self.view.frame = newFrame;
		
		[self updateCar:1];
		
		
		NSString *mp3_path = [[NSBundle mainBundle] pathForResource:@"music_results" ofType:@"mp3"];
		AVAudioPlayer *mp3Audio=[[AVAudioPlayer alloc] initWithContentsOfURL:[NSURL fileURLWithPath:mp3_path] error:nil];
		mp3Audio.numberOfLoops = -1;
		mp3Audio.delegate = self;
		[mp3Audio play];
		
		
		
	}
	
	return self;
}


- (void)updateColor:(int)cid {

	color_flag = cid;
	[self updateCar:1];
}

- (void)updateCar: (int)status {

	
	if (status == 0) {
		
		flag = flag + 1;
		
		if (flag > 23) {
			
			flag = 0;
		}
		
	} 
	
	if (status == 2) {
		
		flag = flag - 1;
		
		if (flag < 0) {
			
			flag = 23;
		}
		
	}
	
	
//	if (shadowImgView.image != nil) {
//		
//		[shadowImgView.image release];
//	}
//	if (carImgView.image != nil) {
//			
//		[carImgView.image release];
//	}
	
	
	
	UIImage *shadowImg = [[UIImage imageNamed:[NSString stringWithFormat:@"0%d.png",(29+2*flag)]] retain];
	[shadowImgView setImage:shadowImg];
	[shadowImg release];
	
	UIImage *carImg    = [[UIImage imageNamed:[NSString stringWithFormat:@"%d%d.png",color_flag,(1+2*flag)]] retain];
	[carImgView setImage:carImg];
	[carImg release];
	
	//NSLog(@"flag:%d   color:%d",flag,color_flag);

}




- (void)audioPlayerDidFinishPlaying:(AVAudioPlayer *)audio successfully:(BOOL)sflag {
	
	//NSLog(@"[theAudio release]");
    [audio release];
}

/*
// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView {
}
*/

/*
// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
}
*/


// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations
	return NO;
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}


- (void)didReceiveMemoryWarning {
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    //NSLog(@"didReceiveMemoryWarning");
    // Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}


- (void)dealloc {
	
	[shadowImgView release];
	[carImgView release];
    [super dealloc];
}


@end
