//
//  BOTBlockActionSheet.h
// 


#import <UIKit/UIKit.h>

@interface BOTBlockActionSheet : UIActionSheet


//initialise actionsheet
-(id)initWithTitle:(NSString *)title
 cancelButtonTitle:(NSString *)cancelButtonTitle
destructiveButtonTitle:(NSString *)destructiveButtonTitle
 otherButtonTitles:(NSString *)otherButtonTitles, ...;


//the block that will be called when a button will be clicked
@property (copy) void (^resultBlock) (int buttonIndex);


@end
