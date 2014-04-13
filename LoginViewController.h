//
//  LoginViewController.h
//  ChatterBox
//
//  Created by Trushitha Narla on 3/31/14.
//  Copyright (c) 2014 Trushitha Narla. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <FacebookSDK/FacebookSDK.h>

@interface LoginViewController : UIViewController <UITextFieldDelegate,FBLoginViewDelegate>
{
    NSMutableData *responseData;
}

@property (weak, nonatomic) IBOutlet UITextField *usernameField;
@property (weak, nonatomic) IBOutlet UITextField *passwordField;
@property (weak, nonatomic) IBOutlet UIImageView *profPic;
@property (strong, nonatomic) IBOutlet FBLoginView *loginView;

- (BOOL)textFieldShouldReturn: (UITextField *)textField;
- (IBAction)login:(id)sender;

@end
