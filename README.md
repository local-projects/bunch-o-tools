#Bunch o' Tools - Toolkit for iOS

Set of tools for everyday iOS usage. At the moment of writing this toolset is new and in an alpha stadium. For the time being there are no "stable releases" and a lot may change. 

##Installation

To install, clone repository and add any of the files you need to your project from the src folder. You can add the `Bunch-o-Tools.h` to any class to have all toolkit functions available.

This framework requires ARC.

##Documentation

###BOTIndeterminateAlertView

Use this AlertView to lock the screen while your app is doing work that the user has to wait for. You will have to keep a reference to the current AlertView to be able to dismiss it after your app has done the work.

###BOTBlockAlertView

Use this AlertView to route the result of the tapped button into a block rather than having to set up a delegate.

``` objective-c
    BOTBlockAlertView *alertView = [[BOTBlockAlertView alloc]
                                    initWithTitle:@"Title"
                                    message:@"Message"
                                    cancelButtonTitle:@"Cancel"
                                    otherButtonTitles:@"Other", nil];
    
    [alertView showWithResultBlock:^(int buttonIndex) {
        NSLog(@"%i", buttonIndex);
    }];
```

##Collaboration

I'm open to collaboration on this toolkit. If you want to submit code feel free to send me a pull request.

##License

Copyright (c) 2012 Huesforalice (http://huesforalice.com/)

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.
