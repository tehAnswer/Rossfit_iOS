//
//  LoginViewController.h
//  Rossfit
//
//  Created by Sergio Gijón on 29/08/14.
//  Copyright (c) 2014 Sergio Gijón. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DismissViewController.h"

@interface LoginViewController : DismissViewController

@property (strong, nonatomic) IBOutlet UITextField *emailTextField;
@property (strong, nonatomic) IBOutlet UITextField *passwordTextField;

- (IBAction)login:(id)sender;
- (IBAction)goToSignUp:(id)sender;

@end
