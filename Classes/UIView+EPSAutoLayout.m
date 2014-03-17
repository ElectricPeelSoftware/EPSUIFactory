//
//  UIView+EPSAutoLayout.m
//  EPSUIFactory
//
//  Created by Peter Stuart on 3/17/14.
//  Copyright (c) 2014 Electric Peel, LLC. All rights reserved.
//

#import "UIView+EPSAutoLayout.h"

@implementation UIView (EPSAutoLayout)

- (instancetype)eps_initForAutoLayout {
    UIView *view = [self initWithFrame:CGRectZero];
    view.translatesAutoresizingMaskIntoConstraints = NO;
    
    return view;
}

@end
