//
//  UIView+LayoutHelpers.h
// 

#import <UIKit/UIKit.h>

@interface UIView(LayoutHelpers)


//center view in parent view
- (void) centerInParent;
- (void) horizontallyCenterInParent;
- (void) verticallyCenterInParent;

//align
- (void) alignInParentRight;
- (void) alignInParentTop;
- (void) alignInParentLeft;
- (void) alignInParentBottom;

//move
- (void) move:(CGPoint) offset;

//setsize
- (void) setHeight:(float) height;
- (void) setWidth:(float) width;

//state
- (BOOL) isPortrait;


@end
