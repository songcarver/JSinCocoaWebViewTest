# JSinCocoaWebViewTest

Looking for someone to take a working example test project I have (Obj-C) and add bridge functionality. The current Xcode project wraps a web view containing a JS prototype. 

To do: write enough Cocoa to demonstrate communications, in both directions, from the example webView JS code to the Objective-C app.

The JS has three methods available:
@updateCloudPhotoRotation (0-360)
@updatePhotoText(text)
@flipCloudPhoto() 

And, it has a UI slider which has a property @photoAngle.

What needs doing:
1. Flip the photo, set angle to 45º and change text to "hello world', by calling the JS methods from the Cocoa App.

2. Listen/poll the UI slider @photoAngle property from the JS view and echo back to the @updateCloudPhotoRotation (angle) JS function via Cocoa. That is, make the slider work.

I will not object to converting project to Swift if it makes you happier. ;-)
