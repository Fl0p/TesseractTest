//
//  TTViewController.m
//  TesseractTest
//
//  Created by Flop on 05/02/2013.
//  Copyright (c) 2013 Flop. All rights reserved.
//

#import "TTViewController.h"

#import "Tesseract.h"

@interface TTViewController ()

@end

@implementation TTViewController

@synthesize text = _text;
@synthesize image = _image;

- (void)viewDidLoad {
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

-(IBAction)onPress:(id)sender {
    
    NSLog(@" START ");
    
    Tesseract* tesseract = [[Tesseract alloc] initWithDataPath:@"tessdata" language:@"eng"];
    
    [tesseract setVariableValue:@"ABCDEFGHIJKLMNOPQRSTUVWXYZ abcdefghijklmnopqrstuvwxyz ,." forKey:@"tessedit_char_whitelist"];
    
    UIImage * image2recognize = self.image.image;
    
    [tesseract setImage:image2recognize];
    
    [tesseract recognize];
    NSString *result = [tesseract recognizedText];
    
    self.text.text = result;

    NSLog(@"%@", result);
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
