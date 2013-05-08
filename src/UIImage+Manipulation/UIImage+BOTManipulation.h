//
//  UIImage+BOTManipulation.h
//

#import <UIKit/UIKit.h>

@interface UIImage (BOTManipulation)

//scale image to a new size
- (UIImage *) scaleToSize:(CGSize) size;
- (UIImage *) scaleToSize:(CGSize) size retainAspect:(BOOL) retainAspect fit:(BOOL) fit;
- (UIImage *) scaleByValue:(float) scaleValue;

//inset image
- (UIImage *) inset:(UIEdgeInsets) insets;

@end
