//
//  Settings.h
//  Pharmacon
//
//  Created by GRAPHITE on 10/03/12.
//  Copyright (c) 2012 GRAPHITE All rights reserved.
//


#import <UIKit/UIKit.h>
#import <MessageUI/MFMailComposeViewController.h>

@interface Settings : UIViewController <MFMailComposeViewControllerDelegate>{
IBOutlet    UISwitch *SwitchCel;
IBOutlet    UISwitch *SwitchWIFI;
    
}
-(IBAction)UpdateWIFI;
-(IBAction)UpdateCel;
-(IBAction)email;

@end
