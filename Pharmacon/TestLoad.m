//
//  TestLoad.m
//  Pharmacon
//
//  Created by GRAPHITE on 10/03/12.
//  Copyright (c) 2012 GRAPHITE All rights reserved.
//


#import "TestLoad.h"

@implementation TestLoad
@synthesize textView;

-(void)viewDidLoad {
        
}
-(IBAction)buttonPress {
    NSString *myTxtFile = [[NSUserDefaults standardUserDefaults] stringForKey:@"one"];
    textView.text=myTxtFile; 
}
-(IBAction)buttonPress2 {
    NSString *myTxtFile2 = [[NSUserDefaults standardUserDefaults] stringForKey:@"two"];
    textView.text=myTxtFile2; 
}
-(IBAction)buttonPress3 {
    NSString *myTxtFile3 = [[NSUserDefaults standardUserDefaults] stringForKey:@"three"];
    textView.text=myTxtFile3; 
}
-(IBAction)buttonPress4 {
    NSString *myTxtFile4 = [[NSUserDefaults standardUserDefaults] stringForKey:@"four"];
    textView.text=myTxtFile4; 
}

@end
