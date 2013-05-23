//
//  CarViewController.h
//  Mazda3
//
//  Created by xiaoli on 10-4-14.
//  Copyright 2010 bict. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>


@interface CarViewController : UIViewController<AVAudioPlayerDelegate> {
	
	UIImageView *shadowImgView;
	UIImageView *carImgView;
	int flag;
	int color_flag;

}


- (void)updateCar:(int)status;
- (void)updateColor:(int)cid;


@property(nonatomic, retain) UIImageView *shadowImgView;
@property(nonatomic, retain) UIImageView *carImgView;

@end
