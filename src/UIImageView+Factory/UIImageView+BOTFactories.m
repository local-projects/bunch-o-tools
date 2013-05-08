//
//  UIImageView+Factory.m
// 

#import "UIImageView+BOTFactories.h"

@implementation UIImageView(BOTFactories)

+ (UIImageView *) imageViewWithImageNamed:(NSString *)imageName
{
    UIImage *image = [UIImage imageNamed:imageName];
    UIImageView *imageView = [[UIImageView alloc] initWithImage:image];
    return imageView;
}


@end
