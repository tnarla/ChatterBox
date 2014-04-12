//
//  LoginViewController.m
//  ChatterBox
//
//  Created by Trushitha Narla on 3/31/14.
//  Copyright (c) 2014 Trushitha Narla. All rights reserved.
//

#import "LoginViewController.h"
#import "HTTPUtil.h"

@interface LoginViewController ()

@end

@implementation LoginViewController

@synthesize usernameField,passwordField;

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.navigationItem.hidesBackButton = YES;
}


- (BOOL)textFieldShouldReturn: (UITextField *)textField {
    NSLog(@"called");
    [textField resignFirstResponder];
    return YES;
}

- (IBAction)login:(id)sender {
    
    NSString *usernameText = [self.usernameField.text stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    NSString *passwordText = [self.passwordField.text stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    
    if ([usernameText length] == 0 || [passwordText length] == 0) {
        UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Oops!" message:@"Make sure you enter a username and password!" delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles:nil];
        [alertView show];
    } else {
        /*[PFUser logInWithUsernameInBackground:usernameText password:passwordText block:^(PFUser *user, NSError *error) {
            if (error) {
                UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Sorry!" message:[error.userInfo objectForKey:@"error"] delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles: nil];
                [alertView show];
            }
            else {
                [self.navigationController popToRootViewControllerAnimated:YES];
            }
        }];*/
        HTTPUtil* util = [HTTPUtil new];
        [util getHTTP:@"http://httpbin.org/get" withParams:@"EVAN=BITCH" withCallback:^(NSString* string){
            NSLog(@"%@",string);
        }];
    }

}
@end
