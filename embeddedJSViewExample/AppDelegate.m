//  Created by Keith Lang on 10/12/17.
//  Copyright © 2017 Keith Lang. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    // Insert code here to initialize your application
	
    [NSApplication sharedApplication].mainWindow.level = NSFloatingWindowLevel;
    //    here's where I should type my stuff

	}



- (BOOL)applicationShouldTerminateAfterLastWindowClosed:(NSApplication *)theApplication {
	return YES;
}

- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}




@end

