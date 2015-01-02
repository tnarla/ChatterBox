//
//  FriendsViewController.h
//  ChatterBox
//
//  Created by Trushitha Narla on 4/1/14.
//  Copyright (c) 2014 Trushitha Narla. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Parse/Parse.h>

@interface FriendsViewController : UITableViewController

@property (nonatomic, strong) PFRelation *friendsRelation;
@property (nonatomic, strong) NSMutableArray *friends;

@end