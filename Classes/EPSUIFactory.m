//
//  EPSUIFactory.m
//  EPSUIFactory
//
//  Created by Peter Stuart on 3/4/14.
//  Copyright (c) 2014 Electric Peel, LLC. All rights reserved.
//

#import "EPSUIFactory.h"

#import "UIView+EPSAutoLayout.h"

@implementation EPSUIFactory

+ (UILabel *)label {
    UILabel *label = [[UILabel alloc] eps_initForAutoLayout];
    
    return label;
}

+ (UIButton *)button {
    UIButton *button = [UIButton buttonWithType:UIButtonTypeSystem];
    button.translatesAutoresizingMaskIntoConstraints = NO;
    
    return button;
}

+ (UITextField *)textField {
    UITextField *textField = [[UITextField alloc] eps_initForAutoLayout];
    textField.borderStyle = UITextBorderStyleRoundedRect;
    
    return textField;
}

+ (UITextField *)noAutocorrectTextField {
    UITextField *textField = [self textField];
    
    textField.autocapitalizationType = UITextAutocapitalizationTypeNone;
    textField.autocorrectionType = UITextAutocorrectionTypeNo;
    
    return textField;
}

+ (UITextField *)emailTextField {
    UITextField *textField = [self noAutocorrectTextField];
    textField.keyboardType = UIKeyboardTypeEmailAddress;
    
    return textField;
}

+ (UITextField *)passwordTextField {
    UITextField *textField = [self noAutocorrectTextField];
    textField.secureTextEntry = YES;
    
    return textField;
}

+ (UITextView *)textView {
    UITextView *textView = [[UITextView alloc] eps_initForAutoLayout];
    textView.font = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
    
    return textView;
}

+ (UIScrollView *)scrollView {
    UIScrollView *scrollView = [[UIScrollView alloc] eps_initForAutoLayout];
    
    return scrollView;
}

+ (UIView *)containerViewForVerticalScrollingInScrollView:(UIScrollView *)scrollView {
    UIView *view = [self containerViewForScrollView:scrollView withEqualAttribute:NSLayoutAttributeWidth];
    
    return view;
}

+ (UIView *)containerViewForHorizontalScrollingInScrollView:(UIScrollView *)scrollView {
    UIView *view = [self containerViewForScrollView:scrollView withEqualAttribute:NSLayoutAttributeHeight];
    
    return view;
}

+ (UIView *)containerViewForScrollView:(UIScrollView *)scrollView withEqualAttribute:(NSLayoutAttribute)attribute {
    UIView *view = [self view];
    [scrollView addSubview:view];
    
    [scrollView addConstraint:[NSLayoutConstraint constraintWithItem:view attribute:attribute relatedBy:NSLayoutRelationEqual toItem:scrollView attribute:attribute multiplier:1 constant:0]];
    NSDictionary *views = NSDictionaryOfVariableBindings(view, scrollView);
    [scrollView addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"|[view]|" options:0 metrics:nil views:views]];
    [scrollView addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|[view]|" options:0 metrics:nil views:views]];
    return view;
}

+ (UIView *)view {
    UIView *view = [[UIView alloc] eps_initForAutoLayout];
    
    return view;
}

@end
