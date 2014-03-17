//
//  EPSUIFactory.h
//  EPSUIFactory
//
//  Created by Peter Stuart on 3/4/14.
//  Copyright (c) 2014 Electric Peel, LLC. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface EPSUIFactory : NSObject

/// @return A label.
+ (UILabel *)label;

/// @return A button with the type UIButtonTypeSystem.
+ (UIButton *)button;

/// @return A text field using the UITextBorderStyleRoundedRect border style.
+ (UITextField *)textField;

/// @return A text field with auto-capitalization and auto-correction turned off.
+ (UITextField *)noAutocorrectTextField;

/// @return A text field set up for email address entry.
+ (UITextField *)emailTextField;

/// @return A text field set up for password entry.
+ (UITextField *)passwordTextField;

/// @return A text field using the user's preferred body font.
+ (UITextView *)textView;

/// @return A scroll view.
+ (UIScrollView *)scrollView;

/// Adds a container view as a subview of the given scroll view, and sets up constraints to ensure the scroll view will only scroll vertically.
/// @param scrollView The scroll view to add a container view to.
/// @return A container view that is a subview of the given scroll view.
+ (UIView *)containerViewForVerticalScrollingInScrollView:(UIScrollView *)scrollView;

/// Adds a container view as a subview of the given scroll view, and sets up constraints to ensure the scroll view will only scroll vertically.
/// @param scrollView The scroll view to add a container view to.
/// @return A container view that is a subview of the given scroll view.
+ (UIView *)containerViewForHorizontalScrollingInScrollView:(UIScrollView *)scrollView;

/// @return A view.
+ (UIView *)view;

@end
