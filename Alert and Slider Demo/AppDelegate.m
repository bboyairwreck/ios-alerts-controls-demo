//
//  AppDelegate.m
//  Alert and Slider Demo
//
//  Created by Eric Chee on 3/17/15.
//  Copyright (c) 2015 Cheebros. All rights reserved.
//


#import "AppDelegate.h"


@interface AppDelegate ()

@property (nonatomic, strong) UINavigationController *navigationController;

@end

@implementation AppDelegate



- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.

    ViewController *viewController = [[ViewController alloc] initWithNibName:nil bundle:NULL];
    self.navigationController = [[UINavigationController alloc] initWithRootViewController:viewController];

    // Set window & starting ViewController
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    [self.window setRootViewController:viewController];

    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    self.window.rootViewController = self.navigationController;

    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
}

- (void)applicationWillTerminate:(UIApplication *)application {
}


@end