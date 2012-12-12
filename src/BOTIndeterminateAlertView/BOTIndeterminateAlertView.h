//
//  BOTIndeterminateAlertView.h
//  

#import <UIKit/UIKit.h>

@interface BOTIndeterminateAlertView : UIAlertView

//create a new BOTIndeterminateAlertView
- (id) initWithTitle:(NSString *)title
             message:(NSString *)message;

//show this BOTIndeterminateAlertView
- (void) show;

//dismiss this BOTIndeterminateAlertView
- (void) dismiss;

@end
