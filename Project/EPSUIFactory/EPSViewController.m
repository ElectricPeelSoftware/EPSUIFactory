//
//  EPSViewController.m
//  EPSUIFactory
//
//  Created by Peter Stuart on 3/4/14.
//  Copyright (c) 2014 Electric Peel, LLC. All rights reserved.
//

#import "EPSViewController.h"

#import "EPSUIFactory.h"

@interface EPSViewController ()

@end

@implementation EPSViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    UIScrollView *scrollView = [EPSUIFactory scrollView];
    [self.view addSubview:scrollView];
    
    NSDictionary *scrollViews = NSDictionaryOfVariableBindings(scrollView);
    
    [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"|[scrollView]|" options:0 metrics:nil views:scrollViews]];
    [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|[scrollView]|" options:0 metrics:nil views:scrollViews]];
    
    UIView *containerView = [EPSUIFactory containerViewForVerticalScrollingInScrollView:scrollView];
    
    UILabel *label = [EPSUIFactory label];
    label.text = @"Label";
    [containerView addSubview:label];
    
    UIButton *button = [EPSUIFactory button];
    [button setTitle:@"Button" forState:UIControlStateNormal];
    [containerView addSubview:button];
    
    UITextField *textField = [EPSUIFactory textField];
    textField.placeholder = @"Text Field";
    [containerView addSubview:textField];
    
    UITextField *noAutocorrectTextField = [EPSUIFactory noAutocorrectTextField];
    noAutocorrectTextField.placeholder = @"No Autocorrect";
    [containerView addSubview:noAutocorrectTextField];
    
    UITextField *emailTextField = [EPSUIFactory emailTextField];
    emailTextField.placeholder = @"Email";
    [containerView addSubview:emailTextField];
    
    UITextField *passwordTextField = [EPSUIFactory passwordTextField];
    passwordTextField.placeholder = @"Password";
    [containerView addSubview:passwordTextField];
    
    UIView *redView = [EPSUIFactory view];
    redView.backgroundColor = [UIColor redColor];
    [containerView addSubview:redView];
    
    NSDictionary *views = NSDictionaryOfVariableBindings(label, button, textField, noAutocorrectTextField, emailTextField, passwordTextField, redView);
    
    [containerView addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"|-[label]-|" options:0 metrics:Nil views:views]];
    [containerView addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|-[label]-[button]-[textField]-[noAutocorrectTextField]-[emailTextField]-[passwordTextField]-[redView(500)]-|" options:NSLayoutFormatAlignAllLeading | NSLayoutFormatAlignAllTrailing metrics:Nil views:views]];
}

@end
