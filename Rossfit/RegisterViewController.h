//
//  RegisterViewController.h
//  Rossfit
//
//  Created by Sergio Gijón on 29/08/14.
//  Copyright (c) 2014 Sergio Gijón. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DismissViewController.h"

@interface RegisterViewController : DismissViewController


@property (strong, nonatomic) IBOutlet UITextField *usernameTextField;
@property (strong, nonatomic) IBOutlet UITextField *emailTextField;
@property (strong, nonatomic) IBOutlet UITextField *passwordTextField;
@property (strong, nonatomic) IBOutlet UITextField *passwordConfirmationTextField;

- (IBAction)signUp:(id)sender;

@end
