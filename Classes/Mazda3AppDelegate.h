//
//  Mazda3AppDelegate.h
//  Mazda3
//
//  Created by xiaoli on 10-4-14.
//  Copyright bict 2010. All rights reserved.
//

#import <UIKit/UIKit.h>


@class Mazda3ViewController;

@interface Mazda3AppDelegate : NSObject <UIApplicationDelegate> {
	
    UIWindow *window;
    Mazda3ViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) Mazda3ViewController *viewController;

@end

