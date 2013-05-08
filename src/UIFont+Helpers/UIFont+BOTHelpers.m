//
//  UIFont+BOTHelpers.m
//

#import "UIFont+BOTHelpers.h"

@implementation UIFont (BOTHelpers)

+(void)printAvailableFontNames
{
     NSArray *fontFamilies = [UIFont familyNames];
     for (int i = 0; i < [fontFamilies count]; i++) {
         NSString *fontFamily = [fontFamilies objectAtIndex:i];
         NSArray *fontNames = [UIFont fontNamesForFamilyName:[fontFamilies objectAtIndex:i]];
         NSLog (@"%@", fontFamily);
         for ( NSString *name in fontNames ) {
             NSLog (@"-%@", name);
         }
         NSLog (@"---");
     }
}

@end
