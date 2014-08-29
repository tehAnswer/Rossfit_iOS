//
//  RegisterViewController.m
//  Rossfit
//
//  Created by Sergio Gijón on 29/08/14.
//  Copyright (c) 2014 Sergio Gijón. All rights reserved.
//

#import "RegisterViewController.h"
#import "Requester.h"
#import "User.h"

@interface RegisterViewController ()

@end

@implementation RegisterViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)signUp:(id)sender {
    Requester *requester = [Requester sharedInstance];
    
    NSString *username = self.usernameTextField.text;
    NSString *email = self.emailTextField.text;
    NSString *password = self.passwordTextField.text;
    NSString *confirmation = self.passwordConfirmationTextField.text;
    
    [requester signUp:username email:email password:password confirmation:confirmation onCompletion:^(User *user, NSError *error) {
        if (error)
            NSLog(@"Error shit");
    }];

}
@end
