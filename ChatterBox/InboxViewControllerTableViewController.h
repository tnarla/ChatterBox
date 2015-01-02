//
//  InboxViewControllerTableViewController.h
//  ChatterBox
//
//  Created by Trushitha Narla on 3/31/14.
//  Copyright (c) 2014 Trushitha Narla. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Parse/Parse.h>

@interface InboxViewControllerTableViewController : UITableViewController
- (IBAction)logout:(id)sender;

@property (nonatomic, strong) UIRefreshControl *refreshControl;


@end
