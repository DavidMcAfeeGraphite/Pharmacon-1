//
//  Info.h
//  Pharmacon
//
//  Created by GRAPHITE on 10/03/12.
//  Copyright (c) 2012 GRAPHITE All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MediaPlayer/MediaPlayer.h>


@interface Info : UIViewController{
    IBOutlet UIButton *button;
    IBOutlet UISwipeGestureRecognizer *swipeGestureRecognizer;
    
}

-(IBAction)playVideo;

@end
 