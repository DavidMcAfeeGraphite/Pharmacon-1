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
    IBOutlet UILabel *Titlelabel;
    IBOutlet UILabel *Phonecticlabel;
    IBOutlet UITextView *Descriptionlabel;
    IBOutlet UITextView *Purposelabel;
    IBOutlet UIScrollView *scroller; 
    IBOutlet UIButton *tweetButton;
    IBOutlet UITextView *textView;
    IBOutlet UIButton *PlayButton;

    
}
-(IBAction)Play;
-(IBAction)Tweet;
@property (nonatomic, retain)IBOutlet UILabel *Titlelabel;
@property (nonatomic, retain)IBOutlet UILabel *Phonecticlabel;
@property (nonatomic, retain)IBOutlet UITextView *Descriptionlabel;
@property (nonatomic, retain)IBOutlet UITextView *Purposelabel;
@property (nonatomic, retain)IBOutlet UIScrollView *scroller; 

@end
