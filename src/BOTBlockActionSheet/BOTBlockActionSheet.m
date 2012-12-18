//
//  BOTBlockActionSheet.m
//  
//

#import "BOTBlockActionSheet.h"

@interface BOTBlockActionSheet() <UIActionSheetDelegate>

@end

@implementation BOTBlockActionSheet 

-(id)initWithTitle:(NSString *)title cancelButtonTitle:(NSString *)cancelButtonTitle destructiveButtonTitle:(NSString *)destructiveButtonTitle otherButtonTitles:(NSString *)otherButtonTitles, ...
{
    self = [super initWithTitle:title delegate:nil cancelButtonTitle:cancelButtonTitle destructiveButtonTitle:destructiveButtonTitle otherButtonTitles:otherButtonTitles,nil];
    
    if ( self ) {
        
        //set self as delegate, so we can receive the result within the alertview
        self.delegate = self;
        
    }
    
    return self;
}

-(void)actionSheet:(UIActionSheet *)actionSheet clickedButtonAtIndex:(NSInteger)buttonIndex
{
    if ( self.resultBlock && buttonIndex >= 0 ) {
        self.resultBlock(buttonIndex);
    }
}

@end
