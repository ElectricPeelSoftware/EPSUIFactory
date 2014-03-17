//
//  EPSAppDelegate.m
//  EPSUIFactory
//
//  Created by Peter Stuart on 3/4/14.
//  Copyright (c) 2014 Electric Peel, LLC. All rights reserved.
//

#import "EPSAppDelegate.h"

#import "EPSViewController.h"

@implementation EPSAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    [self.window makeKeyAndVisible];
    
    self.window.rootViewController = [EPSViewController new];
    
    return YES;
}

@end
