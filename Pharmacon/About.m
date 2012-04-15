//
//  About.m
//  Pharmacon
//
//  Created by GRAPHITE on 10/03/12.
//  Copyright (c) 2012 GRAPHITE All rights reserved.
//


#import "About.h"
@interface About ()

@end

@implementation About

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    int launchCount = [[NSUserDefaults standardUserDefaults] integerForKey:@"launchCount"];
    launchCount++;
    [[NSUserDefaults standardUserDefaults] setInteger:launchCount forKey:@"launchCount"];
    
    
    BOOL neverRate = [[NSUserDefaults standardUserDefaults] boolForKey:@"neverRate"];
    
    if ((neverRate != YES) && (launchCount > 5)) {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Please rate Pharmacon!"
                                                        message:@"Your support will ensure that we can keep updating our database with the latest information and pronounications. It only takes a minute to give us a review and will help GRAPHITE." 
                                                       delegate:self 
                                              cancelButtonTitle:nil 
                                              otherButtonTitles:@"Rate now", @"Never ask again", @"Remind me later", nil];
        alert.delegate = self;
        [alert show];
        
    }

}
    
- (void) alertView:(UIAlertView *) alertView clickedButtonAtIndex:(NSInteger) index {
    if(index == 1) {
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"Example URL"]];
    }    }                                           


- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
