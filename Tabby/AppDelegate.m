//  Created by Keith Lang on 10/12/17.
//  Copyright © 2017 Keith Lang. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


// trying to get clickthough working

// trying to get clickthough working
//- (BOOL)acceptsFirstMouse:(NSEvent *)theEvent {
//	
//	return YES;
//	
//	
//}



- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    // Insert code here to initialize your application
	
//    [NSApplication sharedApplication].mainWindow.level = NSFloatingWindowLevel;
//    //    make the window float above all others

	}






- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}


- (void) userNotificationCenter:(NSUserNotificationCenter *)center didActivateNotification:(NSUserNotification *)notification
{
//	NSRunAlertPanel([notification title], [notification informativeText], @"Ok", nil, nil);
}

- (void) userNotificationCenter:(NSUserNotificationCenter *)center didDeliverNotification:(NSUserNotification *)notification
{
	notification=nil;
	[center removeDeliveredNotification: notification];
}








@end

