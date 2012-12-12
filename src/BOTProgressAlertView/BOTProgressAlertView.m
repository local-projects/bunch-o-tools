//
//  BOTProgressAlertView.m
//

#import "BOTProgressAlertView.h"

@interface BOTProgressAlertView()

@property (assign) BOOL hasCancelButton;
@property (strong) UIProgressView *progressView;

@end

@implementation BOTProgressAlertView

-(id)initWithTitle:(NSString *)title
           message:(NSString *)message
 cancelButtonTitle:(NSString *)cancelButtonTitle
{
    self = [super initWithTitle:title
                        message:message
                       delegate:nil
              cancelButtonTitle:cancelButtonTitle
              otherButtonTitles:nil];
    
    if ( self ) {
        
        //set self as delegate to be able to receive button clicks
        self.delegate = self;
        
        if ( cancelButtonTitle ) {
            
            self.hasCancelButton = YES;
            
            //we have to insert 2 newlines to the message so that there is room for the progressview
            self.message = [self.message stringByAppendingString:@"\n\n"];
        }
        
        //setup progress view
        self.progressView = [UIProgressView new];
        
    }
    
    return self;
}

- (void) showWithCancelBlock:(void (^)())cancelBlock
{
    self.cancelBlock = cancelBlock;
    [self show];
}

-(void)show
{
    [super show];
    [self performSelector:@selector(addProgressView) withObject:nil afterDelay:0.05f];
}

- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex
{
    //a negative button index indicates that the view was dismissed
    if ( buttonIndex < 0 )
        return;
    
    //call the cancel block with our button index
    if ( self.cancelBlock != nil )
        self.cancelBlock();
}

- (void) addProgressView
{
	// Adjust the indicator so it is up a few pixels from the bottom of the alert
    int border = 20;
    
    //two different positions depending on the buttons we use
    if ( !self.hasCancelButton ) {
        self.progressView.frame = CGRectMake(border,
                                            self.bounds.size.height - 47,
                                             self.bounds.size.width - 2 * border,
                                             11);
    } else {
        self.progressView.frame = CGRectMake(border,
                                             self.bounds.size.height - 83,
                                             self.bounds.size.width - 2 * border,
                                             11);
    }
    
	[self addSubview:self.progressView];
}

-(void)dismiss
{
    [self dismissWithClickedButtonIndex:-1 animated:YES];
}

-(void)setProgress:(float)progress
{
    self.progressView.progress = progress;
}

-(float)progress
{
    return self.progressView.progress;
}

@end
