//
//  UIColor+BOTFactories.m
//  Credits to darrinm on Stackoverflow
//

#import "UIColor+BOTFactories.h"

@implementation UIColor (BOTFactories)

+ (UIColor *) colorFromRGBString:(NSString *) s
{
    unsigned rgbValue = 0;
    NSScanner *scanner = [NSScanner scannerWithString:s];
    [scanner setScanLocation:1]; //bypass the # character
    [scanner scanHexInt:&rgbValue];
    return [UIColor colorWithRed:((rgbValue & 0xFF0000) >> 16)/255.0 green:((rgbValue & 0xFF00) >> 8)/255.0 blue:(rgbValue & 0xFF)/255.0 alpha:1.0];
}

+ (UIColor *) colorFromARGBString:(NSString *) s
{
    unsigned rgbValue = 0;
    NSScanner *scanner = [NSScanner scannerWithString:s];
    [scanner setScanLocation:1]; //bypass the # character
    [scanner scanHexInt:&rgbValue];
    return [UIColor colorWithRed:((rgbValue & 0xFF0000) >> 16)/255.0 green:((rgbValue & 0xFF00) >> 8)/255.0 blue:(rgbValue & 0xFF)/255.0 alpha:((rgbValue & 0xFF000000) >> 24)/255.0];
}

@end
