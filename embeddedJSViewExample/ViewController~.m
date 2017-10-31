
//  Created by Keith Lang on 10/12/17.
//  Copyright © 2017 Keith Lang. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.webView = [[WebView alloc] initWithFrame:self.view.bounds];
    self.webView.autoresizingMask = NSViewWidthSizable | NSViewHeightSizable;
    [self.view addSubview:self.webView];
    
    
    
    NSString *resourcePath = [NSBundle mainBundle].resourcePath;
    NSString *htmlPath = [resourcePath stringByAppendingPathComponent:@"/TestFramerForComms.framer/index.html"];
    NSURL *url = [NSURL fileURLWithPath:htmlPath];
    
    [self.webView.mainFrame loadRequest:[NSURLRequest requestWithURL:url]];
    self.webView.layer.contentsScale = self.webView.window.backingScaleFactor;
    
    
}



@end

