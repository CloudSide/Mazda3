//
//  MyView.m
//  Mazda3
//
//  Created by xiaoli on 10-4-14.
//  Copyright 2010 bict. All rights reserved.
//

#import "MyView.h"
#import "CarViewController.h"

@implementation MyView

@synthesize car,btn_1,btn_2,btn_3,btn_4,btn_5,btn_6,btn_7,btn_8;

- (id)initWithFrame:(CGRect)frame {
    if ((self = [super initWithFrame:frame])) {
		
		[self setBackgroundColor:[UIColor lightGrayColor]];
		
//		UIImage *bgimg = [[UIImage imageNamed:@"gui_class_select_bg.png"] retain];
//		UIImageView *bgView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 320, 480)];
//		[bgView setImage:bgimg];
//		[self addSubview:bgView];
//		[bgimg release];
//		[bgView release];
		
		
		
		car = [[CarViewController alloc] init];
		[self addSubview:car.view];
		
		
		UIImage *titlebar = [[UIImage imageNamed:@"gui_titlebar.png"] retain];
		UIImageView *titlebarView = [[UIImageView alloc] initWithFrame:CGRectMake(320-39, 0, 39, 480)];
		[titlebarView setImage:titlebar];
		[self addSubview:titlebarView];
		[titlebar release];
		[titlebarView release];
		
		
		
		
		btn_1 = [[UIButton alloc] initWithFrame:CGRectMake(297, 10, 17, 30)];
		[btn_1 setImage:[UIImage imageNamed:@"btn_1.png"] forState:UIControlStateNormal];
		[self addSubview:btn_1];
		
		btn_2 = [[UIButton alloc] initWithFrame:CGRectMake(297, 10+40, 17, 30)];
		[btn_2 setImage:[UIImage imageNamed:@"btn_2.png"] forState:UIControlStateNormal];
		[self addSubview:btn_2];
		
		btn_3 = [[UIButton alloc] initWithFrame:CGRectMake(297, 10+40*2, 17, 30)];
		[btn_3 setImage:[UIImage imageNamed:@"btn_3.png"] forState:UIControlStateNormal];
		[self addSubview:btn_3];
		
		btn_4 = [[UIButton alloc] initWithFrame:CGRectMake(297, 10+40*3, 17, 30)];
		[btn_4 setImage:[UIImage imageNamed:@"btn_4.png"] forState:UIControlStateNormal];
		[self addSubview:btn_4];
		
		btn_5 = [[UIButton alloc] initWithFrame:CGRectMake(297, 10+40*4, 17, 30)];
		[btn_5 setImage:[UIImage imageNamed:@"btn_5.png"] forState:UIControlStateNormal];
		[self addSubview:btn_5];
		
		btn_6 = [[UIButton alloc] initWithFrame:CGRectMake(297, 10+40*5, 17, 30)];
		[btn_6 setImage:[UIImage imageNamed:@"btn_6.png"] forState:UIControlStateNormal];
		[self addSubview:btn_6];
		
		btn_7 = [[UIButton alloc] initWithFrame:CGRectMake(297, 10+40*6, 17, 30)];
		[btn_7 setImage:[UIImage imageNamed:@"btn_7.png"] forState:UIControlStateNormal];
		[self addSubview:btn_7];
		
		btn_8 = [[UIButton alloc] initWithFrame:CGRectMake(297, 10+40*7, 17, 30)];
		[btn_8 setImage:[UIImage imageNamed:@"btn_8.png"] forState:UIControlStateNormal];
		[self addSubview:btn_8];
		
		
		btn_1.tag = 1;
		btn_2.tag = 2;
		btn_3.tag = 3;
		btn_4.tag = 4;
		btn_5.tag = 5;
		btn_6.tag = 6;
		btn_7.tag = 7;
		btn_8.tag = 8;
		
		[btn_1 addTarget:self action:@selector(chengeColor:) forControlEvents:UIControlEventTouchUpInside];
		[btn_2 addTarget:self action:@selector(chengeColor:) forControlEvents:UIControlEventTouchUpInside];
		[btn_3 addTarget:self action:@selector(chengeColor:) forControlEvents:UIControlEventTouchUpInside];
		[btn_4 addTarget:self action:@selector(chengeColor:) forControlEvents:UIControlEventTouchUpInside];
		[btn_5 addTarget:self action:@selector(chengeColor:) forControlEvents:UIControlEventTouchUpInside];
		[btn_6 addTarget:self action:@selector(chengeColor:) forControlEvents:UIControlEventTouchUpInside];
		[btn_7 addTarget:self action:@selector(chengeColor:) forControlEvents:UIControlEventTouchUpInside];
		[btn_8 addTarget:self action:@selector(chengeColor:) forControlEvents:UIControlEventTouchUpInside];
		
    }
    return self;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

- (void)chengeColor:(UIButton *)sender {

	[car updateColor:sender.tag];
	//NSLog(@"%d",sender.tag);
}


- (void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event {

	UITouch *touch = [touches anyObject];
    CGPoint point = [touch locationInView:self];
	//NSLog(@"x:%f,y:%f",point.x,point.y);
	
	
	if (point.y < flag_y) {
		if (abs((int)(point.y-flag_y)) > 2) {
			
			[car updateCar:0];
			flag_y = point.y;
		}
	} else {
		
		if (abs((int)(point.y-flag_y)) > 2) {
			
			[car updateCar:2];
			flag_y = point.y;
		}
	}
	
}


- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {

	UITouch *touch = [touches anyObject];
    CGPoint point = [touch locationInView:self];
	flag_y = point.y;
}


- (void)dealloc {
	
	[car release];
	[btn_1 release];
	[btn_2 release];
	[btn_3 release];
	[btn_4 release];
	[btn_5 release];
	[btn_6 release];
	[btn_7 release];
	[btn_8 release];
    [super dealloc];
}


@end
