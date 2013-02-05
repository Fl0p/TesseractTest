//
//  TTViewController.h
//  TesseractTest
//
//  Created by Flop on 05/02/2013.
//  Copyright (c) 2013 Flop. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TTViewController : UIViewController

@property (nonatomic, retain) IBOutlet UIImageView* image;
@property (nonatomic, retain) IBOutlet UITextView* text;


-(IBAction)onPress:(id)sender;



@end
