//
//  ViewController.m
//  testSwipe
//
//  Created by Andrew on 28.11.12.
//  Copyright (c) 2012 Andrew. All rights reserved.
//
static NSInteger counter = 0;

#import "ViewController.h"

@interface ViewController ()
@property (retain, nonatomic) IBOutlet UIView *gestView;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    // Add swipeGestures
	self.swipeLeft = [[[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(oneFingerSwipe:)] autorelease];
	[self.swipeLeft setNumberOfTouchesRequired:1];
    [self.swipeLeft setDirection:UISwipeGestureRecognizerDirectionLeft];
	[self.gestView addGestureRecognizer:self.swipeLeft];
	
	self.swipeRight = [[[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(oneFingerSwipe:)] autorelease];
	[self.swipeRight setNumberOfTouchesRequired:1];
    [self.swipeRight setDirection:UISwipeGestureRecognizerDirectionRight];
	[self.gestView addGestureRecognizer:self.swipeRight];
//
}

- (void)oneFingerSwipe:(UISwipeGestureRecognizer *)recognizer
{
	counter = (recognizer.direction == UISwipeGestureRecognizerDirectionLeft) ? --counter : ++counter;
	self.label.text = [NSString stringWithFormat:@"%i",counter];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)dealloc {
    [_label release];
	[_gestView release];
	[_swipeLeft release];
	[_swipeRight release];
    [super dealloc];
}
























@end
