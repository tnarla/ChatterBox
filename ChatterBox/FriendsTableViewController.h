//
//  FriendsTableViewController.h
//  ChatterBox
//
//  Created by Stephen Sulivan on 4/12/14.
//  Copyright (c) 2014 Trushitha Narla. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "HTTPUtil.h"
#import <FacebookSDK/FacebookSDK.h>

@interface FriendsTableViewController : UITableViewController
{
    NSArray* friends;
    NSMutableArray* pics;
}

- (IBAction)reload:(id)sender;

@end
