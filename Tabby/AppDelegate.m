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

- (void) unzip {
	NSFileManager* fm = [NSFileManager defaultManager];
	NSString* zipPath = @"myFile.zip";
	
	NSString* targetFolder = @"/tmp/unzipped"; //this it the parent folder
	//where your zip's content
	//goes to (must exist)
	
	//create a new empty folder (unzipping will fail if any
	//of the payload files already exist at the target location)
	[fm createDirectoryAtPath:targetFolder withIntermediateDirectories:NO
				   attributes:nil error:NULL];
	
	
	//now create a unzip-task
	NSArray *arguments = [NSArray arrayWithObject:zipPath];
	NSTask *unzipTask = [[NSTask alloc] init];
	[unzipTask setLaunchPath:@"/usr/bin/unzip"];
	[unzipTask setCurrentDirectoryPath:targetFolder];
	[unzipTask setArguments:arguments];
	[unzipTask launch];
	[unzipTask waitUntilExit]; //remove this to start the task concurrently
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

