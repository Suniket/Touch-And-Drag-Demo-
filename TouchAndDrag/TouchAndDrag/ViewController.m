//
//  ViewController.m
//  TouchAndDrag
//
//  Created by Shreekant Pawar on 31/01/13.
//  Copyright (c) 2013 Suniket Wagh. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize touchesLabel,viewOne;



- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)pushToStart:(id)sender {
    
    [UIView beginAnimations:nil context:nil];
	
	[UIView setAnimationDuration:0.5];
	[UIView setAnimationBeginsFromCurrentState:YES];
	[UIView setAnimationRepeatCount:3];
	[UIView setAnimationRepeatAutoreverses:YES];
	CGAffineTransform transform2 = CGAffineTransformMakeTranslation(0.0, -60.0);
	[viewOne setTransform:transform2];
	[UIView commitAnimations];
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
	touchesLabel.text=@"Touches Began";
	
}

-(void)touchesCancelled:(NSSet *)touches withEvent:(UIEvent *)event{
	touchesLabel.text=@"Touches Cancelled";
	
}


-(void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event {
	
	touchesLabel.text=@"Touches stopped";
	
}

-(void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event{
	touchesLabel.text=@"Drag detected";
	
}



@end
