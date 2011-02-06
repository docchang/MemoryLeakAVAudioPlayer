//
//  TestAVAudioPlayerMemoryLeakAppDelegate.h
//  TestAVAudioPlayerMemoryLeak
//
//  Created by Dominic Chang on 2/6/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class TestAVAudioPlayerMemoryLeakViewController;

@interface TestAVAudioPlayerMemoryLeakAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    TestAVAudioPlayerMemoryLeakViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet TestAVAudioPlayerMemoryLeakViewController *viewController;

@end

