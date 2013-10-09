//
//  BOTBlockButton.m
//  cma
//
//  Created by David Scharf on 10/9/13.
//
//

#import "BOTBlockButton.h"

@implementation BOTBlockButton

- (id)init
{
    self = [super init];
    [self registerEvents];
    return self;
}

- (void) registerEvents
{
    [self addTarget:self
             action:@selector(touchUpEvent)
   forControlEvents:UIControlEventTouchUpInside];
    
    [self addTarget:self
             action:@selector(touchDownEvent)
   forControlEvents:UIControlEventTouchUpInside];
}

- (void) touchUpEvent
{
    if ( self.touchUpBlock ) {
        self.touchUpBlock();
    }
}

- (void) touchDownEvent
{
    if ( self.touchDownBlock ) {
        self.touchDownBlock();
    }
}

@end
