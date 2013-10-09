//
//  BOTBlockButton.h
//  cma
//
//  Created by David Scharf on 10/9/13.
//
//

#import <UIKit/UIKit.h>

@interface BOTBlockButton : UIButton

@property (copy) void (^touchUpBlock) ();
@property (copy) void (^touchDownBlock) ();


@end
