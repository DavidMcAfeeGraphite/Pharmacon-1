//
//  Drug.h
//  Pharmacon
//  Pharmacon
//
//  Created by GRAPHITE on 10/03/12.
//  Copyright (c) 2012 GRAPHITE All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AVFoundation/AVFoundation.h"
#import <Twitter/Twitter.h>
#import <AudioToolbox/AudioToolbox.h>





@interface Drug : UIViewController <AVAudioPlayerDelegate>{
    AVAudioPlayer *audioPlayer;
    IBOutlet UILabel *label;
    IBOutlet UILabel *label2;
    IBOutlet UITextView *label3;
    IBOutlet UITextView *label4;
    IBOutlet UIScrollView *scroller; 
    IBOutlet UIButton *tweetButton;
    IBOutlet UITextView *textView;
    IBOutlet UIButton *PlayButton;

    
}
-(IBAction)Play;
-(IBAction)Tweet;
@property (nonatomic, retain)IBOutlet UILabel *label;
@property (nonatomic, retain)IBOutlet UILabel *label2;
@property (nonatomic, retain)IBOutlet UITextView *label3;
@property (nonatomic, retain)IBOutlet UITextView *label4;
@property (nonatomic, retain)IBOutlet UIScrollView *scroller; 

@end
