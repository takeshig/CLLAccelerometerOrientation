//
//  AppDelegate.m
//  CLLAccelerometerOrientation
//
//  Created by Shigeyuki Takeuchi on 2012/11/04.
//  Copyright (c) 2012 Shigeyuki Takeuchi. All rights reserved.
//

#import "AppDelegate.h"
#import "CLLAccelerometerOrientation.h"

@interface AppDelegate()
- (void)didRotate:(NSNotification*)notification;
@end

@implementation AppDelegate
{
    CLLAccelerometerOrientation *accelerometer_orientation;
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    accelerometer_orientation = [[CLLAccelerometerOrientation alloc] init];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
     [accelerometer_orientation stop];
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
     [accelerometer_orientation start];
}

- (void)applicationWillTerminate:(UIApplication *)application
{
}

@end
