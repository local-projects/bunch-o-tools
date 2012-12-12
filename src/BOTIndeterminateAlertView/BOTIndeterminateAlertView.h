//
//  BOTIndeterminateAlertView.h
//  
//
//  Created by David Scharf on 6/4/12.
//  Copyright (c) 2012 Huesforalice. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BOTIndeterminateAlertView : UIAlertView

- (id) initWithTitle:(NSString *)title
             message:(NSString *)message
            delegate:(id)delegate;

- (void) dismiss;

@end
