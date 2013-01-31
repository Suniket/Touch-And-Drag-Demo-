//
//  ViewController.h
//  TouchAndDrag
//
//  Created by Shreekant Pawar on 31/01/13.
//  Copyright (c) 2013 Suniket Wagh. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
     IBOutlet UIView *viewOne;

    IBOutlet UILabel *touchesLabel;

}

@property (nonatomic, retain) IBOutlet UILabel *touchesLabel;
@property (nonatomic, retain) IBOutlet UIView *viewOne;

- (IBAction)pushToStart:(id)sender;

@end
