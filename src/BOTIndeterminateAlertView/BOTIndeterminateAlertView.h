//
//  BOTIndeterminateAlertView.h
//  

#import <UIKit/UIKit.h>

@interface BOTIndeterminateAlertView : UIAlertView

//create a new BOTIndeterminateAlertView
- (id) initWithTitle:(NSString *)title
             message:(NSString *)message
            delegate:(id)delegate;

//show this BOTIndeterminateAlertView
- (void) show;

//dismiss this BOTIndeterminateAlertView
- (void) dismiss;

@end
