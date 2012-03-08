//
//  OXAppDelegate.h
//  OX
//
//  Created by Ralf Berge on 08.03.12.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class OXViewController;

@interface OXAppDelegate : NSObject <UIApplicationDelegate>

@property (nonatomic, retain) IBOutlet UIWindow *window;

@property (nonatomic, retain) IBOutlet OXViewController *viewController;

@end
