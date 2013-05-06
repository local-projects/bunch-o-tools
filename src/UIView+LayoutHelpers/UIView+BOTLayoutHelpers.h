//
//  UIView+LayoutHelpers.h
// 

#import <UIKit/UIKit.h>

@interface UIView(BOTLayoutHelpers)


//center view in parent view
- (void) centerInParent;
- (void) centerInParentHorizontally;
- (void) centerInParentVertically;

//align
- (void) alignInParentRight;
- (void) alignInParentTop;
- (void) alignInParentLeft;
- (void) alignInParentBottom;

//move
- (void) move:(CGPoint) offset;
- (void) setOrigin:(CGPoint) origin;
- (void) setX:(CGFloat) offset;
- (void) setY:(CGFloat) offset;

//position
- (void) moveToLeftOf:(UIView *) view;
- (void) moveToRightOf:(UIView *) view;
- (void) moveBelow:(UIView *) view;
- (void) moveOver:(UIView *) view;

//setsize
- (void) setHeight:(CGFloat) height;
- (void) setWidth:(CGFloat) width;
- (void) setSize:(CGSize) size;

//state
- (BOOL) isPortrait;


@end
