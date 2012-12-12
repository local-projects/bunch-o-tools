//
//  BOTIndeterminateAlertView.m
//

#import "BOTBlockAlertView.h"

@implementation BOTBlockAlertView

-(id)initWithTitle:(NSString *)title
           message:(NSString *)message
 cancelButtonTitle:(NSString *)cancelButtonTitle
 otherButtonTitles:(NSString *)otherButtonTitles, ...
{
    self = [super initWithTitle:title
                        message:message
                       delegate:nil
              cancelButtonTitle:cancelButtonTitle
              otherButtonTitles:otherButtonTitles, nil];
    
    if ( self ) {
        
        //set self as delegate to be able to receive button clicks
        self.delegate = self;
        
    }
    
    return self;
}

- (void) showWithResultBlock:(void(^)(int buttonIndex)) resultBlock
{
    self.resultBlock = resultBlock;
    [self show];
}

- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex
{
    //a negative button index indicates that the view was dismissed
    if ( buttonIndex < 0 )
        return;
    
    //call the resultl block with our button index
    if ( self.resultBlock != nil )
        self.resultBlock(buttonIndex);
}

@end
