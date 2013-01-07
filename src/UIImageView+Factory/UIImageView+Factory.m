//
//  UIImageView+Factory.m
// 

#import "UIImageView+Factory.h"

@implementation UIImageView(Factory)

+ (UIImageView *) imageViewWithImageNamed:(NSString *)imageName
{
    UIImage *image = [UIImage imageNamed:imageName];
    UIImageView *imageView = [[UIImageView alloc] initWithImage:image];
    return imageView;
}


@end
