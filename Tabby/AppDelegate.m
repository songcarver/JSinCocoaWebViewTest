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
	[self unzip];
//    [NSApplication sharedApplication].mainWindow.level = NSFloatingWindowLevel;
//    //    make the window float above all others

	
}

- (void)unzip {
//	NSBundle *myBundle = [NSBundle mainBundle];
//	NSLog(@"hi guys");

//	NSString *sourceResource = [myBundle pathForResource:@"coffeeScriptArchive" ofType:@"zip"];
//	NSLog(absPath);
	
	NSString *fileSource=[[[NSBundle mainBundle] resourcePath] stringByAppendingPathComponent:@"/tabby.framer/coffeeScriptArchive.zip"];
	NSString *targetFolder=[[[NSBundle mainBundle] resourcePath] stringByAppendingPathComponent:@"/tabby.framer/"];
//	NSString *targetFolder = @"Users/keithlang/desktop";

	

	
	NSTask *task = [NSTask launchedTaskWithLaunchPath:@"/usr/bin/unzip" arguments:@[@"-o", fileSource, @"-d", targetFolder]];
	[task waitUntilExit];
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

