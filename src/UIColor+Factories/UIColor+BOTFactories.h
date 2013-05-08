//
//  UIColor+BOTFactories.h
//

@interface UIColor (BOTFactories)

//create ui color from a string such as @"#FF00FF"
+ (UIColor *) colorFromRGBString:(NSString *) s;

//create ui color from a string such as @"#77FF00FF"
+ (UIColor *) colorFromARGBString:(NSString *) s;

@end
