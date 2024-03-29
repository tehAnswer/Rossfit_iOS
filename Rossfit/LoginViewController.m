//
//  LoginViewController.m
//  Rossfit
//
//  Created by Sergio Gijón on 29/08/14.
//  Copyright (c) 2014 Sergio Gijón. All rights reserved.
//

#import "Requester.h"
#import "User.h"
#import "LoginViewController.h"

@interface LoginViewController ()

@end

@implementation LoginViewController

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

- (IBAction)login:(id)sender {
    Requester *requester = [Requester sharedInstance];
    [requester login:self.emailTextField.text password:self.passwordTextField.text onCompletion:^(User *user, NSError *error) {
        if (error)
            NSLog(@"Error shit");
    }];
}

@end
