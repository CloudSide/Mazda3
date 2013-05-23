//
//  MyView.h
//  Mazda3
//
//  Created by xiaoli on 10-4-14.
//  Copyright 2010 bict. All rights reserved.
//

#import <UIKit/UIKit.h>

@class CarViewController;

@interface MyView : UIView {
	
	CarViewController *car;
	int flag_y;
	UIButton *btn_1;
	UIButton *btn_2;
	UIButton *btn_3;
	UIButton *btn_4;
	UIButton *btn_5;
	UIButton *btn_6;
	UIButton *btn_7;
	UIButton *btn_8;

}

- (void)chengeColor:(UIButton *)sender;


@property(nonatomic,retain) CarViewController *car;
@property(nonatomic,retain) UIButton *btn_1;
@property(nonatomic,retain) UIButton *btn_2;
@property(nonatomic,retain) UIButton *btn_3;
@property(nonatomic,retain) UIButton *btn_4;
@property(nonatomic,retain) UIButton *btn_5;
@property(nonatomic,retain) UIButton *btn_6;
@property(nonatomic,retain) UIButton *btn_7;
@property(nonatomic,retain) UIButton *btn_8;



@end
