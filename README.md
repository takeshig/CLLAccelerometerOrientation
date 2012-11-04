CLLAccelerometerOrientation
=====

iOS Orientaion Notification Library with Accelerometer Sensor

Installation
-----

+ Add *CLLAccelerometerOrientation.h* and *CLLAccelerometerOrientation.m* to your project
+ Add *CoreMotion.framework* to Libraries (Project -> Build Phases -> Link Binary With Libraries)
+ Add "accelerometer" key to Required device capabilities in <project-name>-Info.plist

Usage
-----

See example Xcode project in /Demo

    #import "CLLAccelerometerOrientation.h"
    
    CLLAccelerometerOrientation *accelerometer_orientation;
    accelerometer_orientation = [[CLLAccelerometerOrientation alloc] init];
    [accelerometer_orientation start];
   
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(didRotate:)
                                                 name:CLLAccelerometerOrientationDidChangeNotification
                                                object:nil];
   
   
    - (void)didRotate:(NSNotification*)notification {
        CLLAccelerometerOrientation *sender = notification.object;
        UIDeviceOrientation orientation = [sender orientation];
       
        if (orientaion == UIDeviceOrientationFaceDown) {
           ...
        }
    }


License
-----

see LICENSE.txt
