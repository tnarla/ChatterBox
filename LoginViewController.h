//
//  LoginViewController.h
//  ChatterBox
//
//  Created by Trushitha Narla on 3/31/14.
//  Copyright (c) 2014 Trushitha Narla. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LoginViewController : UIViewController <UITextFieldDelegate,NSURLConnectionDelegate>
{
    NSMutableData *responseData;
}

@property (weak, nonatomic) IBOutlet UITextField *usernameField;
@property (weak, nonatomic) IBOutlet UITextField *passwordField;

- (BOOL)textFieldShouldReturn: (UITextField *)textField;
- (IBAction)login:(id)sender;

@end
