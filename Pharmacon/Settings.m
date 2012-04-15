//
//  Settings.m
//  Pharmacon
//
//  Created by GRAPHITE on 10/03/12.
//  Copyright (c) 2012 GRAPHITE All rights reserved.
//

#import "Settings.h"

@interface Settings ()

@end

@implementation Settings

-(IBAction)email {
    MFMailComposeViewController *composer = [[MFMailComposeViewController alloc] init];
    [composer setMailComposeDelegate:self];
    if ([MFMailComposeViewController canSendMail]) {
        [composer setToRecipients:[NSArray arrayWithObjects:@"graphite100@gmail.com", nil]];
        [composer setSubject:@"Pharmacon Feedback and Advice"];
        [composer setMessageBody:@"<p> State your idea, feedback or comments in the space below. You are running Version 1.0 (4.4b) Full Version (please do not alter this version number as it will help us deduct the problem). We thank you for your feedback and your contribution towards improving Pharmacon. </p> <p2> You can ask to subscribe to Pharmacon News alerts if you wish in the email but unless you specify that you wish to, you will not be added to our mailing list. If you do subscribe then you will recieve an exclusive Email showing all of the new drugs added to the app every week and any promotional offers or news on Graphite applications. </p2>" isHTML:YES];
        [composer setModalTransitionStyle:UIModalTransitionStyleCoverVertical];
        [self presentModalViewController:composer animated:YES];
        NSLog(@"Email View is Open");
    }
}


-(void)mailComposeController:(MFMailComposeViewController *)controller didFinishWithResult:(MFMailComposeResult)result error:(NSError*)error {
    
    if(error){
        
        UIAlertView *alert =[[UIAlertView alloc]initWithTitle:@"Unsuccessful Sending" message:@"Error: Your email was not sent to us, please try again."delegate:nil cancelButtonTitle:@"Dismiss" otherButtonTitles:nil];
        
        [alert show];
        
        
        [self dismissModalViewControllerAnimated:YES];
        
    }
    
    else {
        
        [self dismissModalViewControllerAnimated:YES];
        
        UIAlertView *alert =[[UIAlertView alloc]initWithTitle:@"Sent Successfully or Cancelled Successfully" message:@"Your email was sent successfully. You should hear back from us in just a few days. Thank you. If you chose to cancel the message, then it was cancelled successfully."delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
        NSLog(@"Email View is Closed");
        [alert show];
        
}
    
}

-(IBAction)UpdateWIFI;{
    
    if (SwitchWIFI.on) { 
        
       [[NSUserDefaults standardUserDefaults] setInteger:1 forKey:@"WiFiDownloading"];       
        NSLog(@"WIFI Data is Enabled");
        
    }
    
    else 
    {
        NSLog(@"WIFI Data is Disabled");
        [[NSUserDefaults standardUserDefaults] setInteger:0 forKey:@"WiFiDownloading"];
    }
    
    
    
    
}
-(IBAction)UpdateCel;{
    if (SwitchCel.on) { 
        
        NSLog(@"Cellular Data is Enabled");
    [[NSUserDefaults standardUserDefaults] setInteger:1 forKey:@"CellularDownloading"];
    
    }

    else 
    {
        NSLog(@"Cellular Data is Disabled");
        [[NSUserDefaults standardUserDefaults] setInteger:0 forKey:@"WiFiDownloading"];
        
    }

    
    
    
    
}

-(IBAction)reset {
    [[NSUserDefaults standardUserDefaults]setBool:NO forKey:@"RanBefore"];
    [[NSUserDefaults standardUserDefaults] synchronize];
}

-(IBAction)sendAnalytics {
    
}

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
    if (SwitchWIFI.on) {
        //off parameter not natively recognised that is why this is here, in case you are wondering Sam
    }

    else {
        UIAlertView *alert = [[UIAlertView alloc]
                              initWithTitle:@"Pharmacon" message:@"It is recommended that you turn Wi-Fi Downloading on for downloading updates as these can help expand the database." delegate:self cancelButtonTitle:@"OK" otherButtonTitles: nil];
        [alert show];
    }
    
    
    
    [super viewDidLoad];
	// Do any additional setup after loading the view.
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
