
//  Created by Keith Lang on 10/12/17.
//  Copyright © 2017 Keith Lang. All rights reserved.
//

#import "ViewController.h"


@implementation ViewController



- (void)viewDidLoad {
    [super viewDidLoad];

    self.webView = [[WebView alloc] initWithFrame:self.view.bounds];
    self.webView.autoresizingMask = NSViewWidthSizable | NSViewHeightSizable;
    [self.webViewContainer addSubview:self.webView];
    
    
    
    NSString *resourcePath = [NSBundle mainBundle].resourcePath;
    NSString *htmlPath = [resourcePath stringByAppendingPathComponent:@"Tabby.framer/index.html"];
    NSURL *url = [NSURL fileURLWithPath:htmlPath];
    
    [self.webView.mainFrame loadRequest:[NSURLRequest requestWithURL:url]];
    self.webView.layer.contentsScale = self.webView.window.backingScaleFactor;
    
    
    
    self.webView.UIDelegate = self;
    self.webView.downloadDelegate = self;
	
	
    self.webView.frameLoadDelegate= self;
    self.webView.resourceLoadDelegate = self;
    self.webView.policyDelegate = self;
	
	


	
//
////    TODO Poll mouse
    [self methodA];
//	[self methodToSendUserName];
//

    
}






- (void) methodToSendUserName;
{
	NSLog(@"methodToSendUserName was called");
	NSString *fullUserName = NSFullUserName();
	
//	NSString *stringForKey = @"";
	NSString *userIDString = [[NSUserDefaults standardUserDefaults]
							  stringForKey:@"userID"];
	
	
	NSString * userName = [NSString stringWithFormat:@"updateUserName('%@', '%@');",fullUserName,userIDString];
	
	@try
	{
			[self.webView stringByEvaluatingJavaScriptFromString:userName ];
	}
	@catch (NSException * e)
	{
		NSLog(@"Cocoa bridge tried to call the Webkit window with no response");
	}
	
}



- (void) getKeyValuePairFromMac:(NSString*) keyToLookup {
//bookmark
	
	
	
	NSString *stringForKey = [[NSUserDefaults standardUserDefaults]
							  stringForKey:keyToLookup];
	
	// book
	NSString * stringToSend = [NSString stringWithFormat:@"setKeyValueFromMac('%@', '%@');",stringForKey,keyToLookup];
	[self.webView stringByEvaluatingJavaScriptFromString:stringToSend];
	
	
}



- (void) methodA;
{
	[NSTimer scheduledTimerWithTimeInterval:1.0f
									 target:self selector:@selector(methodB:) userInfo:nil repeats:NO];
//    Here's the timer method that calls the method that does the work
    [NSTimer scheduledTimerWithTimeInterval:60.0f
									 target:self selector:@selector(methodB:) userInfo:nil repeats:YES];
}




- (NSString*) screenResolution {
	
	NSRect screenRect;
	NSArray *screenArray = [NSScreen screens];
	unsigned screenCount = [screenArray count];
	unsigned index  = 0;
	
	for (index; index < screenCount; index++)
	{
		NSScreen *screen = [screenArray objectAtIndex: index];
		screenRect = [screen visibleFrame];
	}
	
	return [NSString stringWithFormat:@"%.1fx%.1f",screenRect.size.width, screenRect.size.height];
}








- (void) methodB:(NSTimer *)timer
{
	// Get mouse position, send it along as factor of screen
    //Do calculations.
    NSPoint mouseLoc = [NSEvent mouseLocation]; //get current mouse position
    // NSLog(@"Mouse location: %f %f", mouseLoc.x, mouseLoc.y);
	

	
	// Get screen coordinates
	
	NSRect screenRect;
	NSArray *screenArray = [NSScreen screens];
	unsigned screenCount = [screenArray count];
	unsigned index  = 0;
	
	for (index; index < screenCount; index++)
	{
		NSScreen *screen = [screenArray objectAtIndex: index];
		screenRect = [screen visibleFrame];
	}
	
	
	
//    send mouse coordinates
	NSString * mouseX = [NSString stringWithFormat:@"updateMouseX(%f, %f);",
						 (mouseLoc.x/screenRect.size.width),
						 (mouseLoc.y/screenRect.size.height)];
						  
	[self.webView stringByEvaluatingJavaScriptFromString:mouseX];
	
	
	

	
	
	[self methodToSendUserName];
//	[self showMacNotification:@"hello world" withAlertSound:@"hammer"];
	
}







- (IBAction)flipPhoto:(id)sender {


//    NSString * flipJS = @"flipCloudPhoto();";


//    [self.webView stringByEvaluatingJavaScriptFromString:flipJS];


}


- (IBAction)updatePhotoText:(NSTextField *)sender {


    NSString * updateTextJS = [NSString stringWithFormat:@"updatePhotoText('%@');",sender.stringValue];


    [self.webView stringByEvaluatingJavaScriptFromString:updateTextJS];



}


- (IBAction)rotationAction:(NSSlider *)sender {


    NSString * rotateJS = [NSString stringWithFormat:@"updateCloudPhotoRotation(%f);",sender.doubleValue];


    [self.webView stringByEvaluatingJavaScriptFromString:rotateJS];



}



- (BOOL)webView:(WebView *)webView doCommandBySelector:(SEL)selector {

    
        NSLog(@"Editing Delegate NSStringFromSelector(selector):%@",NSStringFromSelector(selector));
	
    
    return YES;

    
}



- (void)webView:(WebView *)sender didFinishLoadForFrame:(WebFrame *)frame {
    
    
    NSLog(@"cocoa bridge is loaded");
    
    [[self.webView windowScriptObject] setValue:self forKey:@"CocoaBridge"];
	
//	[self methodToSendUserName];
	
    

    
}



+ (BOOL) isSelectorExcludedFromWebScript:(SEL)aSelector {
    NSArray *  allowedSelectorNamesForJavaScript = @[
													 @"photoFlipped",
													 @"photoRotated:",
													 @"writeKeyValuePairToMac:",
													 @"setKeyValueFromMac:"
													 ];
    
    return ![allowedSelectorNamesForJavaScript containsObject:NSStringFromSelector(aSelector)];
}

- (void) photoFlipped {
      NSLog(@"cocoa bridge photoFlipped");

}


- (void) photoRotated:(NSString *) angle {
    NSLog(@"cocoa bridge photoRotated");

    self.slider.doubleValue = angle.doubleValue;
}



// JS calls this and tells MacOS to show notification
- (void) showMacNotification:(NSString *)text withAlertSound:(NSString *)alertSound{
		NSLog(@"should show Mac notification");

	
	NSUserNotification *notification = [[NSUserNotification alloc] init];
	notification.title = text;
	notification.informativeText = [NSString stringWithFormat: text];
	//   notification.soundName = NSUserNotificationDefaultSoundName;
	
	
//	NSString * alertSound = @"nothing";
	
	NSLog(alertSound);
	
	notification.soundName = @"tabby_bell.aiff";
	if ([alertSound isEqualToString: @"trophy"])
	{notification.soundName = @"mediumCrowdCheer3.aiff";}
	else if ([alertSound isEqualToString: @"hammer"])
		{notification.soundName = @"hammer.aiff";}
	
	notification.soundName = @"mediumCrowdCheer3.aiff";
	
	[[NSUserNotificationCenter defaultUserNotificationCenter] deliverNotification:notification];
}



- (WebView *)webView:(WebView *)sender createWebViewWithRequest:(NSURLRequest *)request {
	
	return [self externalWebView:sender];
	


}



- (void) writeKeyValuePairToMac: (NSString*) keyString :(NSString*) valueString{

	  [[NSUserDefaults standardUserDefaults] setObject:valueString forKey:keyString];
	  [[NSUserDefaults standardUserDefaults] synchronize];
		  
}




- (void)webView:(WebView *)sender decidePolicyForNavigationAction:(NSDictionary *)actionInformation request:(NSURLRequest *)request frame:(WebFrame *)frame decisionListener:(id<WebPolicyDecisionListener>)listener
{
	[[NSWorkspace sharedWorkspace] openURL:[actionInformation objectForKey:WebActionOriginalURLKey]];
}

-(WebView*)externalWebView:(WebView*)newWebView
{
	WebView *webView = newWebView;
	
	[webView setUIDelegate:self];
	[webView setPolicyDelegate:self];
	[webView setResourceLoadDelegate:self];
	return webView;
}






//- (BOOL)acceptsFirstMouse:(NSEvent *)theEvent
//{
//	return YES;
//}



@end

