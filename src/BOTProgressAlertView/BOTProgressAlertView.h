//
//  BOTProgressAlertView.h
//  

#import <UIKit/UIKit.h>

@interface BOTProgressAlertView : UIAlertView


//initialise alertview
-(id)initWithTitle:(NSString *)title
           message:(NSString *)message
 cancelButtonTitle:(NSString *)cancelButtonTitle;

//show and set a result block
- (void) showWithCancelBlock:(void(^)()) cancelBlock;

//regular show
- (void) show;

//dismiss this BOTProgressAlertView
- (void) dismiss;

//the block that will be called when the cancel button is clicked
@property (copy) void (^cancelBlock) ();

//set progress on the progress view (0.0 - 1.0)
@property (nonatomic, assign) float progress;

//access to progress bar for styling etc.
@property (strong, readonly) UIProgressView *progressView;


@end
