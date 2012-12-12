//
//  BOTBlockAlertView.h
//  

#import <UIKit/UIKit.h>

@interface BOTBlockAlertView : UIAlertView


//initialise alert view with block
-(id)initWithTitle:(NSString *)title
           message:(NSString *)message
 cancelButtonTitle:(NSString *)cancelButtonTitle
 otherButtonTitles:(NSString *)otherButtonTitles, ...;

//show and set a result block
- (void) showWithResultBlock:(void(^)(int buttonIndex)) resultBlock;


//the block that will be called when a button will be clicked
@property (copy) void (^resultBlock) (int buttonIndex);


@end
