//
//  UIImage+BOTManipulation.m
//

#import "UIImage+BOTManipulation.h"

@implementation UIImage (BOTManipulation)

#pragma mark - scaling

- (UIImage *) scaleToSize:(CGSize) size retainAspect:(BOOL) retainAspect fit:(BOOL) fit
{
    //prepare vars
    CGRect frame = CGRectZero;
    CGSize targetSize = size;
    frame.size = targetSize;

    //make sure ratio is preserved
    if ( retainAspect ) {
        float imageRatio = self.size.width / self.size.height;
        float targetRatio = targetSize.width / targetSize.height;
        
        //determine if we need to scale the height or the width to get to
        //the right ratio
        BOOL scaleHeight = imageRatio > targetRatio;
        
        //if we want to fill instead of fit, reverse this
        if ( !fit ) scaleHeight = !scaleHeight;
        
        if ( scaleHeight ) {
            //image breiter als target
            targetSize.height = targetSize.width / imageRatio;
        } else {
            //image höher als target
            targetSize.width = targetSize.height * imageRatio;
        }
        
        frame.size = targetSize;
        
        // if fill
        if ( !fit ) {
            //move frame
            frame.origin.x -= (targetSize.width - size.width) / 2.;
            frame.origin.y -= (targetSize.height - size.height) / 2. ;

            //target size is the original size requested
            targetSize = size;
        }
    }
    
    //begin context
    UIGraphicsBeginImageContextWithOptions(targetSize, YES, self.scale);
    
    //setup context, need to transform coordinates to screen space
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextTranslateCTM(context, 0.0, targetSize.height);
    CGContextScaleCTM(context, 1.0, -1.0);
    
    CGContextDrawImage(context, frame, self.CGImage);
    UIImage* scaledImage = UIGraphicsGetImageFromCurrentImageContext();
    
    UIGraphicsEndImageContext();
    
    scaledImage = [UIImage imageWithCGImage:scaledImage.CGImage scale:1.0 orientation:self.imageOrientation];
    return scaledImage;
}

- (UIImage *) scaleToSize:(CGSize) size
{
    return [self scaleToSize:size retainAspect:NO fit:NO];
}

-(UIImage *)scaleByValue:(float)scaleValue
{
    //we just need to scale the size of the new image
    CGSize size = self.size;
    size.width *= scaleValue;
    size.height *= scaleValue;
    return [self scaleToSize:size];
}

#pragma mark - insetting

-(UIImage *)inset:(UIEdgeInsets)insets
{
    //prepare vars
    CGRect frame = CGRectZero; frame.size = self.size;
    
    //offset frame
    frame.origin.y -= insets.top;
    frame.origin.x -= insets.left;
    
    //size of new image
    CGSize newImageSize = self.size;
    newImageSize.width -= (insets.left + insets.right);
    newImageSize.height -= (insets.top + insets.bottom);
    
    //begin context
    UIGraphicsBeginImageContextWithOptions(newImageSize, YES, self.scale);
    
    //setup context, need to transform coordinates to screen space
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextTranslateCTM(context, 0.0, newImageSize.height);
    CGContextScaleCTM(context, 1.0, -1.0);
    
    CGContextDrawImage(context, frame, self.CGImage);
    
    UIImage* scaledImage = UIGraphicsGetImageFromCurrentImageContext();
    
    UIGraphicsEndImageContext();
    scaledImage = [UIImage imageWithCGImage:scaledImage.CGImage scale:1.0 orientation:self.imageOrientation];
    return scaledImage;
}

@end
