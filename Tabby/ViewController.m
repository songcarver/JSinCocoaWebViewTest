
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

// todo the problem seems to be here. The function never gets called properly
- (void) methodToSendUserName;
{
	NSLog(@"methodToSendUserName was called");
	NSString *fullUserName = NSFullUserName();
	NSString * userName = [NSString stringWithFormat:@"updateUserName('%@');",fullUserName];
	[self.webView stringByEvaluatingJavaScriptFromString:userName];
}




- (void) methodA;
{

//    Here's the timer method that calls the method that does the work
    [NSTimer scheduledTimerWithTimeInterval:5.0f
									 target:self selector:@selector(methodB:) userInfo:nil repeats:YES];
}













- (void) methodB:(NSTimer *)timer
{

    //Do calculations.
    NSPoint mouseLoc = [NSEvent mouseLocation]; //get current mouse position
    // NSLog(@"Mouse location: %f %f", mouseLoc.x, mouseLoc.y);
    
//    send mouse coordinates
	NSString * mouseX = [NSString stringWithFormat:@"updateMouseX(%f, %f);",mouseLoc.x, mouseLoc.y];
	[self.webView stringByEvaluatingJavaScriptFromString:mouseX];
	


	[self methodToSendUserName];

	
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
													 @"showMacNotification:"
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

- (void) showMacNotification:(NSString *) text {
		NSLog(@"should show Mac notification");
	// play notification sound
//	NSSound * myAwesomeSound = [NSSound soundNamed:@"tabby_bell.aiff"];
//	[myAwesomeSound play];
	
	NSUserNotification *notification = [[NSUserNotification alloc] init];
	notification.title = text;
	notification.informativeText = [NSString stringWithFormat: text];
	//   notification.soundName = NSUserNotificationDefaultSoundName;
	notification.soundName = @"tabby_bell.aiff";
	
	[[NSUserNotificationCenter defaultUserNotificationCenter] deliverNotification:notification];
}

- (WebView *)webView:(WebView *)sender createWebViewWithRequest:(NSURLRequest *)request {
	
	return [self externalWebView:sender];
	


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






@end

