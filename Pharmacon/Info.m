//
//  Info.m
//  Pharmacon
//
//  Created by GRAPHITE on 10/03/12.
//  Copyright (c) 2012 GRAPHITE All rights reserved.
//


#import "Info.h"
#import <MediaPlayer/MediaPlayer.h>


@interface Info ()

@end

@implementation Info


-(IBAction)playVideo;{
    
    
    NSURL *url = [NSURL fileURLWithPath:[[NSBundle mainBundle]
                                         pathForResource:@"Pharmacon" ofType:@"mov"]];
    
    MPMoviePlayerViewController *playercontroller = [[MPMoviePlayerViewController alloc] 
                                                     initWithContentURL:url];
    
    [self presentMoviePlayerViewControllerAnimated:playercontroller];
    
    playercontroller.moviePlayer.movieSourceType = MPMovieSourceTypeFile;
    
    [playercontroller.moviePlayer play];
    
        playercontroller = nil;
            
    
    [button setHidden:NO];
    swipeGestureRecognizer.enabled = YES;

}


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {

    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
        [button setHidden:YES];
    swipeGestureRecognizer.enabled = NO;
    
    
     BOOL buttonrun = [[NSUserDefaults standardUserDefaults]boolForKey:@"ButtonRunBefore"];
    if(!buttonrun) {
        
        [button setHidden:YES];

        [[NSUserDefaults standardUserDefaults]setBool:YES forKey:@"ButtonRunBefore"];
        [[NSUserDefaults standardUserDefaults] synchronize];

        }
       
    BOOL HideAlert = [[NSUserDefaults standardUserDefaults]boolForKey:@"HideAlert"];
    if(!HideAlert) {
        UIAlertView *alert = [[UIAlertView alloc]
                              initWithTitle:@"Please Watch Video" message:@"Please watch the following video to continue to use Pharmacon." delegate:self cancelButtonTitle:@"Ok" otherButtonTitles: nil];
        [alert show];
        [[NSUserDefaults standardUserDefaults]setBool:YES forKey:@"HideAlert"];
        [[NSUserDefaults standardUserDefaults] synchronize];
}
}

- (void)viewDidUnload
{
    [super viewDidUnload];

}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
