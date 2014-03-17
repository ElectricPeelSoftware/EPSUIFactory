//
//  UIView+EPSAutoLayout.h
//  EPSUIFactory
//
//  Created by Peter Stuart on 3/17/14.
//  Copyright (c) 2014 Electric Peel, LLC. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (EPSAutoLayout)

/// Calls @c initWithFrame: with a frame of @c (0,0,0,0) and then sets @c translatesAutoresizingMaskIntoConstraints to @c NO.
- (instancetype)eps_initForAutoLayout;

@end
