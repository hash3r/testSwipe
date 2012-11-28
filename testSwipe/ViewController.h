//
//  ViewController.h
//  testSwipe
//
//  Created by Andrew on 28.11.12.
//  Copyright (c) 2012 Andrew. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (retain, nonatomic) IBOutlet UISwipeGestureRecognizer *swipeLeft;
@property (retain, nonatomic) IBOutlet UISwipeGestureRecognizer *swipeRight;
@property (retain, nonatomic) IBOutlet UILabel *label;

@end
