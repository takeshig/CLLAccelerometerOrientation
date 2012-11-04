//
//  RootViewController.m
//  CLLAccelerometerOrientation
//
//  Created by Shigeyuki Takeuchi on 2012/11/04.
//  Copyright (c) 2012 Shigeyuki Takeuchi. All rights reserved.
//

#import "RootViewController.h"
#import "CLLAccelerometerOrientation.h"

@interface RootViewController ()
@end

@implementation RootViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(didRotate:)
                                                 name:CLLAccelerometerOrientationDidChangeNotification
                                               object:nil];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)didRotate:(NSNotification*)notification {
    CLLAccelerometerOrientation *sender = notification.object;
    UIDeviceOrientation orientation = [sender orientation];
    
    switch (orientation) {
        case UIDeviceOrientationUnknown:
            self.label.text = @"UIDeviceOrientationUnknown";
            break;
            
        case UIDeviceOrientationPortrait:
            self.label.text = @"UIDeviceOrientationPortrait";
            break;
            
        case UIDeviceOrientationPortraitUpsideDown:
            self.label.text = @"UIDeviceOrientationPortraitUpsideDown";
            break;
            
        case UIDeviceOrientationLandscapeLeft:
            self.label.text = @"UIDeviceOrientationLandscapeLeft";
            break;
            
        case UIDeviceOrientationLandscapeRight:
            self.label.text = @"UIDeviceOrientationLandscapeRight";
            break;
            
        case UIDeviceOrientationFaceUp:
            self.label.text = @"UIDeviceOrientationFaceUp";
            break;
            
        case UIDeviceOrientationFaceDown:
            self.label.text = @"UIDeviceOrientationFaceDown";
            break;
            
        default:
            break;
    }
}

#pragma mark - UIPageViewController delegate methods

@end
