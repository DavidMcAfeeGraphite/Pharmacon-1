//
//  Drug.m
//  Pharmacon
//
//  Created by GRAPHITE on 10/03/12.
//  Copyright (c) 2012 GRAPHITE All rights reserved.

#import "Drug.h"
#import "AVFoundation/AVFoundation.h"
#import <Twitter/Twitter.h>

@interface Drug ()

@end

@implementation Drug
@synthesize label;
@synthesize label2;
@synthesize label3;
@synthesize label4;
@synthesize scroller;

-(IBAction)Tweet;{
    NSLog(@"Tweeting");
    // Create the view controller
    TWTweetComposeViewController *twitter = [[TWTweetComposeViewController alloc] init];
    
    [twitter addURL:[NSURL URLWithString:[NSString stringWithString:@"http://google.com/"]]];
    [twitter setInitialText:label3.text];
    
    [self presentModalViewController:twitter animated:YES];
    
    twitter.completionHandler = ^(TWTweetComposeViewControllerResult result) 
    {
        NSString *title = @"Tweet Status";
        NSString *msg; 
        
        if (result == TWTweetComposeViewControllerResultCancelled)
            msg = @"Tweet compostion was canceled.";
        else if (result == TWTweetComposeViewControllerResultDone)
            msg = @"Tweet composition completed.";
        
        UIAlertView* alertView = [[UIAlertView alloc] initWithTitle:title message:msg delegate:self cancelButtonTitle:@"Okay" otherButtonTitles:nil];
        [alertView show];
        
        // Dismiss the controller
        [self dismissModalViewControllerAnimated:YES];
    };
}

-(IBAction)Play{
    NSString *newAudioFile = [[NSBundle mainBundle] pathForResource:@"Paracetamol 1"  ofType:@"mp3"];
    
    audioPlayer =  [[AVAudioPlayer alloc] initWithContentsOfURL:[NSURL fileURLWithPath:newAudioFile] error:NULL];
    
    [audioPlayer setDelegate:self];
    
    [audioPlayer prepareToPlay];
    
    [audioPlayer play]; 
}
    
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad{
    
    NSString *myTxtFile2 = [[NSUserDefaults standardUserDefaults] stringForKey:@"two"];
    textView.text=myTxtFile2; 

    [tweetButton setHidden:YES];
    [scroller setScrollEnabled:YES];
	[scroller setContentSize:CGSizeMake(280, 550)];
    int numLines = label4.contentSize.height / label4.font.lineHeight;

    switch(numLines)
    {
        case 0:
            NSLog(@"Error Getting Data For Purpose");
            [scroller setScrollEnabled:NO];
            break;
        case 1:
            [scroller setScrollEnabled:NO];
            break;
        case 2:
            [scroller setScrollEnabled:NO];
            break;
        case 3:
            [scroller setScrollEnabled:NO];
            break;
        case 4:
            [scroller setScrollEnabled:NO];
            break;
        case 5:
            [scroller setScrollEnabled:NO];
            break;
        case 6:
            [scroller setScrollEnabled:NO];
            break;
        case 7:
            [scroller setContentSize:CGSizeMake(280, 500)];
            break;
        case 8:
            [scroller setContentSize:CGSizeMake(280, 512)];
            break;
        case 9:
            [scroller setContentSize:CGSizeMake(280, 530)];
            break;
        case 10:
            [scroller setContentSize:CGSizeMake(280, 550)];
            break;
        case 11:
            [scroller setContentSize:CGSizeMake(280, 565)];
            break;
        case 12:
            [scroller setContentSize:CGSizeMake(280, 580)];
            break;
        case 13:
            [scroller setContentSize:CGSizeMake(280, 600)];
            break;
        case 14:
            [scroller setContentSize:CGSizeMake(280, 640)];
            break;
        case 15:
            [scroller setContentSize:CGSizeMake(280, 660)];
            break;
        default:
            break;
    }
            [super viewDidLoad];
       if ([TWTweetComposeViewController canSendTweet]) {
        [tweetButton setHidden:NO];
    }

}
- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
