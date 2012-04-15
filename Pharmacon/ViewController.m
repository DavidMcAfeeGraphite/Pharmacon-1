//
//  ViewController.m
//  Pharmacon
//
//  Created by GRAPHITE on 10/03/12.
//  Copyright (c) 2012 GRAPHITE All rights reserved.
//

#import "ViewController.h"
#import "QuartzCore/QuartzCore.h"
#import "Results.h"
#import "AppDelegate.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize textField;



//SEARCH FUNCTIONALITY NOT FINALISED YET
-(IBAction)Search;{
    NSString *name = [textField text];
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    
    [defaults setObject:name forKey:@"name"];
    [defaults setObject:name forKey:@"meta"];

     [defaults synchronize];
    
    }


//I HAVE NOTED OUT THE IBACTION FOR NOW AS I DO NOT WANT 
//IT TO BE ACCIDENTALLY CLICKED AND THEN HAVING TO COMPLETELY QUIT THE APP


/*-(IBAction)GRAPHITEBUTTON;{
    
     get the view that's currently showing
    
	UIView *currentView = self.view;
	 get the the underlying UIWindow, or the view containing the current view view
	UIView *theWindow = [currentView superview];
	
    remove the current view and replace with myView1
	[currentView removeFromSuperview];
    [theWindow addSubview:myImageView];
    
	
    set up an animation for the transition between the views
	CATransition *animation = [CATransition animation];
	[animation setDuration:0.5];
	[animation setType:kCATransitionPush];
	[animation setSubtype:kCATransitionFromLeft];
    [animation setTimingFunction:[CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut]];
	
	[[theWindow layer] addAnimation:animation forKey:@"SwitchToView1"];
    
}
*/

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    BOOL TandC = [[NSUserDefaults standardUserDefaults]boolForKey:@"RanBefore"];
    if(!TandC) {
        UIAlertView *alert = [[UIAlertView alloc]
                              initWithTitle:@"Pharmacon Guidelines" message:@"This app has been professionally made. It has been Approved by the New South Wales University on the 12th September 2012. This app should not be used to get advice on what drugs to take, rather it is used for reference for University Students. All information is 100 percent accurate and reliable. Copyright 2012 GRAPHITE. " delegate:self cancelButtonTitle:@"No Thanks"  otherButtonTitles: @"I Agree", nil];        [alert show];
        
        
        NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
        NSString *filePath = [NSString stringWithFormat:@"%@/%@", [paths objectAtIndex:0],@"4.xml"];   
        
        
        
        NSURL *url = [NSURL URLWithString:@"http://www.pharmacon.site50.net/database/4.xml"];
        NSData *urlData = [NSData dataWithContentsOfURL:url];
        [urlData writeToFile:filePath atomically:YES];
        NSLog(@"Downloaded File");
        
     
      
        
    }
    
    NSError *err = nil;
    NSString *urla = [[NSString stringWithFormat:@"http://www.pharmacon.site50.net/database/1.xml"] stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
    NSString *myTxtFile = [NSString stringWithContentsOfURL:[NSURL URLWithString:urla] encoding:NSUTF8StringEncoding error:&err];
    [[NSUserDefaults standardUserDefaults] setObject:myTxtFile forKey:@"one"];
    NSString *url2 = [[NSString stringWithFormat:@"http://www.pharmacon.site50.net/database/2.xml"] 
                      stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
    NSString *myTxtFile2 = [NSString stringWithContentsOfURL:[NSURL URLWithString:url2] encoding:NSUTF8StringEncoding error:&err];
    [[NSUserDefaults standardUserDefaults] setObject:myTxtFile2 forKey:@"two"];
    NSString *url3 = [[NSString stringWithFormat:@"http://www.pharmacon.site50.net/database/3.xml"] stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
    NSString *myTxtFile3 = [NSString stringWithContentsOfURL:[NSURL URLWithString:url3] encoding:NSUTF8StringEncoding error:&err];
    [[NSUserDefaults standardUserDefaults] setObject:myTxtFile3 forKey:@"three"];
    NSString *url4 = [[NSString stringWithFormat:@"http://www.pharmacon.site50.net/database/4.xml"] stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
    NSString *myTxtFile4 = [NSString stringWithContentsOfURL:[NSURL URLWithString:url4] encoding:NSUTF8StringEncoding error:&err];
    [[NSUserDefaults standardUserDefaults] setObject:myTxtFile4 forKey:@"four"];
    NSString *url5 = [[NSString stringWithFormat:@"http://www.pharmacon.site50.net/database/5.xml"] stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
    NSString *myTxtFile5 = [NSString stringWithContentsOfURL:[NSURL URLWithString:url5] encoding:NSUTF8StringEncoding error:&err];
    [[NSUserDefaults standardUserDefaults] setObject:myTxtFile5 forKey:@"five"];
    NSString *url6 = [[NSString stringWithFormat:@"http://www.pharmacon.site50.net/database/6.xml"] 
                      stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
    NSString *myTxtFile6 = [NSString stringWithContentsOfURL:[NSURL URLWithString:url6] encoding:NSUTF8StringEncoding error:&err];
    [[NSUserDefaults standardUserDefaults] setObject:myTxtFile6 forKey:@"six"];
    NSString *url7 = [[NSString stringWithFormat:@"http://www.pharmacon.site50.net/database/7.xml"] stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
    NSString *myTxtFile7 = [NSString stringWithContentsOfURL:[NSURL URLWithString:url7] encoding:NSUTF8StringEncoding error:&err];
    [[NSUserDefaults standardUserDefaults] setObject:myTxtFile7 forKey:@"seven"];
    NSString *url8 = [[NSString stringWithFormat:@"http://www.pharmacon.site50.net/database/8.xml"] stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
    NSString *myTxtFile8 = [NSString stringWithContentsOfURL:[NSURL URLWithString:url8] encoding:NSUTF8StringEncoding error:&err];
    [[NSUserDefaults standardUserDefaults] setObject:myTxtFile8 forKey:@"eight"];
    NSString *url9 = [[NSString stringWithFormat:@"http://www.pharmacon.site50.net/database/9.xml"] stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
    NSString *myTxtFile9 = [NSString stringWithContentsOfURL:[NSURL URLWithString:url9] encoding:NSUTF8StringEncoding error:&err];
    [[NSUserDefaults standardUserDefaults] setObject:myTxtFile9 forKey:@"nine"];
    NSString *url10 = [[NSString stringWithFormat:@"http://www.pharmacon.site50.net/database/10.xml"] 
                       stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
    NSString *myTxtFile10 = [NSString stringWithContentsOfURL:[NSURL URLWithString:url10] encoding:NSUTF8StringEncoding error:&err];
    [[NSUserDefaults standardUserDefaults] setObject:myTxtFile10 forKey:@"ten"];
    NSString *url11 = [[NSString stringWithFormat:@"http://www.pharmacon.site50.net/database/11.xml"] stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
    NSString *myTxtFile11 = [NSString stringWithContentsOfURL:[NSURL URLWithString:url11] encoding:NSUTF8StringEncoding error:&err];
    [[NSUserDefaults standardUserDefaults] setObject:myTxtFile11 forKey:@"eleven"];
    NSString *url12 = [[NSString stringWithFormat:@"http://www.pharmacon.site50.net/database/12.xml"] stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
    NSString *myTxtFile12 = [NSString stringWithContentsOfURL:[NSURL URLWithString:url12] encoding:NSUTF8StringEncoding error:&err];
    [[NSUserDefaults standardUserDefaults] setObject:myTxtFile12 forKey:@"twelve"];
    NSString *url13 = [[NSString stringWithFormat:@"http://www.pharmacon.site50.net/database/13.xml"] stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
    NSString *myTxtFile13 = [NSString stringWithContentsOfURL:[NSURL URLWithString:url13] encoding:NSUTF8StringEncoding error:&err];
    [[NSUserDefaults standardUserDefaults] setObject:myTxtFile13 forKey:@"thirteen"];
    NSString *url14 = [[NSString stringWithFormat:@"http://www.pharmacon.site50.net/database/14.xml"] 
                       stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
    NSString *myTxtFile14 = [NSString stringWithContentsOfURL:[NSURL URLWithString:url14] encoding:NSUTF8StringEncoding error:&err];
    [[NSUserDefaults standardUserDefaults] setObject:myTxtFile14 forKey:@"fourteen"];
    NSString *url15 = [[NSString stringWithFormat:@"http://www.pharmacon.site50.net/database/15.xml"] stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
    NSString *myTxtFile15 = [NSString stringWithContentsOfURL:[NSURL URLWithString:url15] encoding:NSUTF8StringEncoding error:&err];
    [[NSUserDefaults standardUserDefaults] setObject:myTxtFile15 forKey:@"fifteen"];
    NSString *url16 = [[NSString stringWithFormat:@"http://www.pharmacon.site50.net/database/16.xml"] stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
    NSString *myTxtFile16 = [NSString stringWithContentsOfURL:[NSURL URLWithString:url16] encoding:NSUTF8StringEncoding error:&err];
    [[NSUserDefaults standardUserDefaults] setObject:myTxtFile16 forKey:@"sixteen"];   
    NSString *url17 = [[NSString stringWithFormat:@"http://www.pharmacon.site50.net/database/17.xml"] stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
    NSString *myTxtFile17 = [NSString stringWithContentsOfURL:[NSURL URLWithString:url17] encoding:NSUTF8StringEncoding error:&err];
    [[NSUserDefaults standardUserDefaults] setObject:myTxtFile17 forKey:@"seventeen"];  
    NSString *url18 = [[NSString stringWithFormat:@"http://www.pharmacon.site50.net/database/18.xml"] stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
    NSString *myTxtFile18 = [NSString stringWithContentsOfURL:[NSURL URLWithString:url18] encoding:NSUTF8StringEncoding error:&err];
    [[NSUserDefaults standardUserDefaults] setObject:myTxtFile18 forKey:@"eighteen"];  
    NSString *url19 = [[NSString stringWithFormat:@"http://www.pharmacon.site50.net/database/19.xml"] stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
    NSString *myTxtFile19 = [NSString stringWithContentsOfURL:[NSURL URLWithString:url19] encoding:NSUTF8StringEncoding error:&err];
    [[NSUserDefaults standardUserDefaults] setObject:myTxtFile19 forKey:@"ninteenth"]; 
    NSString *url20 = [[NSString stringWithFormat:@"http://www.pharmacon.site50.net/database/20.xml"] stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
    NSString *myTxtFile20 = [NSString stringWithContentsOfURL:[NSURL URLWithString:url20] encoding:NSUTF8StringEncoding error:&err];
    [[NSUserDefaults standardUserDefaults] setObject:myTxtFile20 forKey:@"twenty"];  
}
      
        
- (void)touchesEnded: (NSSet *)touches withEvent: (UIEvent *)event {
    for (UIView* view in self.view.subviews) {
        if ([view isKindOfClass:[UITextField class]])
            [view resignFirstResponder];
    }
}

//CONCEPT SHOWS HOW TO GET DATA FROM A URL - THIS SHALL BE GENERATED AND SHALL CHANGE WHEN I GET MORE INFORMATION FROM PHILIPP PLUS IT SHALL BE RELEVANT FOR MORE URLS BASED ON THE COMMAND FROM THE SERVER - THIS SHALL EVOLVE
-(IBAction)downloadSimulation {
    
    NSError *err = nil;
    NSString *url = [[NSString stringWithFormat:@"http://www.pharmacon.site50.net/database/1.xml"] stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
    NSString *myTxtFile = [NSString stringWithContentsOfURL:[NSURL URLWithString:url] encoding:NSUTF8StringEncoding error:&err];
    [[NSUserDefaults standardUserDefaults] setObject:myTxtFile forKey:@"one"];
    NSString *url2 = [[NSString stringWithFormat:@"http://www.pharmacon.site50.net/database/2.xml"] 
    stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
    NSString *myTxtFile2 = [NSString stringWithContentsOfURL:[NSURL URLWithString:url2] encoding:NSUTF8StringEncoding error:&err];
     [[NSUserDefaults standardUserDefaults] setObject:myTxtFile2 forKey:@"two"];
     NSString *url3 = [[NSString stringWithFormat:@"http://www.pharmacon.site50.net/database/3.xml"] stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
    NSString *myTxtFile3 = [NSString stringWithContentsOfURL:[NSURL URLWithString:url3] encoding:NSUTF8StringEncoding error:&err];
    [[NSUserDefaults standardUserDefaults] setObject:myTxtFile3 forKey:@"three"];
    NSString *url4 = [[NSString stringWithFormat:@"http://www.pharmacon.site50.net/database/4.xml"] stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
    NSString *myTxtFile4 = [NSString stringWithContentsOfURL:[NSURL URLWithString:url4] encoding:NSUTF8StringEncoding error:&err];
    [[NSUserDefaults standardUserDefaults] setObject:myTxtFile4 forKey:@"four"];
    NSString *url5 = [[NSString stringWithFormat:@"http://www.pharmacon.site50.net/database/5.xml"] stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
    NSString *myTxtFile5 = [NSString stringWithContentsOfURL:[NSURL URLWithString:url5] encoding:NSUTF8StringEncoding error:&err];
    [[NSUserDefaults standardUserDefaults] setObject:myTxtFile5 forKey:@"five"];
    NSString *url6 = [[NSString stringWithFormat:@"http://www.pharmacon.site50.net/database/6.xml"] 
                      stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
    NSString *myTxtFile6 = [NSString stringWithContentsOfURL:[NSURL URLWithString:url6] encoding:NSUTF8StringEncoding error:&err];
    [[NSUserDefaults standardUserDefaults] setObject:myTxtFile6 forKey:@"six"];
    NSString *url7 = [[NSString stringWithFormat:@"http://www.pharmacon.site50.net/database/7.xml"] stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
    NSString *myTxtFile7 = [NSString stringWithContentsOfURL:[NSURL URLWithString:url7] encoding:NSUTF8StringEncoding error:&err];
    [[NSUserDefaults standardUserDefaults] setObject:myTxtFile7 forKey:@"seven"];
    NSString *url8 = [[NSString stringWithFormat:@"http://www.pharmacon.site50.net/database/8.xml"] stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
    NSString *myTxtFile8 = [NSString stringWithContentsOfURL:[NSURL URLWithString:url8] encoding:NSUTF8StringEncoding error:&err];
    [[NSUserDefaults standardUserDefaults] setObject:myTxtFile8 forKey:@"eight"];
    NSString *url9 = [[NSString stringWithFormat:@"http://www.pharmacon.site50.net/database/9.xml"] stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
    NSString *myTxtFile9 = [NSString stringWithContentsOfURL:[NSURL URLWithString:url9] encoding:NSUTF8StringEncoding error:&err];
    [[NSUserDefaults standardUserDefaults] setObject:myTxtFile9 forKey:@"nine"];
    NSString *url10 = [[NSString stringWithFormat:@"http://www.pharmacon.site50.net/database/10.xml"] 
                      stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
    NSString *myTxtFile10 = [NSString stringWithContentsOfURL:[NSURL URLWithString:url10] encoding:NSUTF8StringEncoding error:&err];
    [[NSUserDefaults standardUserDefaults] setObject:myTxtFile10 forKey:@"ten"];
    NSString *url11 = [[NSString stringWithFormat:@"http://www.pharmacon.site50.net/database/11.xml"] stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
    NSString *myTxtFile11 = [NSString stringWithContentsOfURL:[NSURL URLWithString:url11] encoding:NSUTF8StringEncoding error:&err];
    [[NSUserDefaults standardUserDefaults] setObject:myTxtFile11 forKey:@"eleven"];
    NSString *url12 = [[NSString stringWithFormat:@"http://www.pharmacon.site50.net/database/12.xml"] stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
    NSString *myTxtFile12 = [NSString stringWithContentsOfURL:[NSURL URLWithString:url12] encoding:NSUTF8StringEncoding error:&err];
    [[NSUserDefaults standardUserDefaults] setObject:myTxtFile12 forKey:@"twelve"];
    NSString *url13 = [[NSString stringWithFormat:@"http://www.pharmacon.site50.net/database/13.xml"] stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
    NSString *myTxtFile13 = [NSString stringWithContentsOfURL:[NSURL URLWithString:url13] encoding:NSUTF8StringEncoding error:&err];
    [[NSUserDefaults standardUserDefaults] setObject:myTxtFile13 forKey:@"thirteen"];
    NSString *url14 = [[NSString stringWithFormat:@"http://www.pharmacon.site50.net/database/14.xml"] 
                      stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
    NSString *myTxtFile14 = [NSString stringWithContentsOfURL:[NSURL URLWithString:url14] encoding:NSUTF8StringEncoding error:&err];
    [[NSUserDefaults standardUserDefaults] setObject:myTxtFile14 forKey:@"fourteen"];
    NSString *url15 = [[NSString stringWithFormat:@"http://www.pharmacon.site50.net/database/15.xml"] stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
    NSString *myTxtFile15 = [NSString stringWithContentsOfURL:[NSURL URLWithString:url15] encoding:NSUTF8StringEncoding error:&err];
    [[NSUserDefaults standardUserDefaults] setObject:myTxtFile15 forKey:@"fifteen"];
    NSString *url16 = [[NSString stringWithFormat:@"http://www.pharmacon.site50.net/database/16.xml"] stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
    NSString *myTxtFile16 = [NSString stringWithContentsOfURL:[NSURL URLWithString:url16] encoding:NSUTF8StringEncoding error:&err];
    [[NSUserDefaults standardUserDefaults] setObject:myTxtFile16 forKey:@"sixteen"];   
    NSString *url17 = [[NSString stringWithFormat:@"http://www.pharmacon.site50.net/database/17.xml"] stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
    NSString *myTxtFile17 = [NSString stringWithContentsOfURL:[NSURL URLWithString:url17] encoding:NSUTF8StringEncoding error:&err];
    [[NSUserDefaults standardUserDefaults] setObject:myTxtFile17 forKey:@"seventeen"];  
    NSString *url18 = [[NSString stringWithFormat:@"http://www.pharmacon.site50.net/database/18.xml"] stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
    NSString *myTxtFile18 = [NSString stringWithContentsOfURL:[NSURL URLWithString:url18] encoding:NSUTF8StringEncoding error:&err];
    [[NSUserDefaults standardUserDefaults] setObject:myTxtFile18 forKey:@"eighteen"];  
    NSString *url19 = [[NSString stringWithFormat:@"http://www.pharmacon.site50.net/database/19.xml"] stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
    NSString *myTxtFile19 = [NSString stringWithContentsOfURL:[NSURL URLWithString:url19] encoding:NSUTF8StringEncoding error:&err];
    [[NSUserDefaults standardUserDefaults] setObject:myTxtFile19 forKey:@"ninteenth"]; 
    NSString *url20 = [[NSString stringWithFormat:@"http://www.pharmacon.site50.net/database/20.xml"] stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
    NSString *myTxtFile20 = [NSString stringWithContentsOfURL:[NSURL URLWithString:url20] encoding:NSUTF8StringEncoding error:&err];
    [[NSUserDefaults standardUserDefaults] setObject:myTxtFile20 forKey:@"twenty"];  
    
}


- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex
{
    if (buttonIndex == 0)
    {
        [[NSUserDefaults standardUserDefaults]setBool:NO forKey:@"RanBefore"];
        [[NSUserDefaults standardUserDefaults] synchronize];
        
        exit(0);
    }
    
    else if (buttonIndex == 1)
    {
        [[NSUserDefaults standardUserDefaults]setBool:YES forKey:@"RanBefore"];
        [[NSUserDefaults standardUserDefaults] synchronize];

    }
}


- (void)viewDidUnload
{
    [super viewDidUnload];
}




@end