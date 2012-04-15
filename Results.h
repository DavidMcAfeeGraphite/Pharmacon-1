//
//  Results.h
//  Pharmacon
//
//  Created by GRAPHITE on 10/03/12.
//  Copyright (c) 2012 GRAPHITE All rights reserved.
//


#import <UIKit/UIKit.h>

@interface Results : UIViewController <UITableViewDelegate, UITableViewDataSource>{
    IBOutlet UITextField *textField1;
    
	}
@property (nonatomic, retain) IBOutlet UITextField *textField1;
-(IBAction)Search;
@end
