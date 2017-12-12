
//  Created by Keith Lang on 10/12/17.
//  Copyright © 2017 Keith Lang. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import <WebKit/WebKit.h>




@interface ViewController : NSViewController <WebUIDelegate,WebDownloadDelegate,WebFrameLoadDelegate,WebResourceLoadDelegate,WebPolicyDelegate>



@property(strong,nonatomic) WebView* webView;
@property (strong) IBOutlet NSView *webViewContainer;
@property (strong) IBOutlet NSSlider *slider;



@end


