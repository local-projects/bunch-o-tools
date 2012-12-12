//
//  BOTIndeterminateAlertView.m
//

#import "BOTIndeterminateAlertView.h"

@implementation BOTIndeterminateAlertView

- (id) initWithTitle:(NSString *)title
             message:(NSString *)message
            delegate:(id)delegate
{
    self = [super initWithTitle:title
                        message:message
                       delegate:delegate
              cancelButtonTitle:nil
              otherButtonTitles:nil];
    return self;
}

-(void)show
{
    [super show];
    [self performSelector:@selector(addSpinner) withObject:nil afterDelay:0.05f];
}

- (void) dismiss 
{
    [self dismissWithClickedButtonIndex:0 animated:YES];
}

-(void)dismissWithClickedButtonIndex:(NSInteger)buttonIndex animated:(BOOL)animated
{
    [super dismissWithClickedButtonIndex:buttonIndex animated:animated];
}

- (void) addSpinner
{
	//add activity indicator
	UIActivityIndicatorView *indicator = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleWhite];
	
	// Adjust the indicator so it is up a few pixels from the bottom of the alert
	indicator.center = CGPointMake(self.bounds.size.width / 2, self.bounds.size.height - 44);
	[indicator startAnimating];
	[self addSubview:indicator];
}

@end
