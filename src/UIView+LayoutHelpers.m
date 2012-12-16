//
//  UIView+LayoutHelpers.m
//  


#import "UIView+LayoutHelpers.h"

@implementation UIView(LayoutHelpers)

#pragma mark - center in parent view

-(void)centerInParent
{
    [self horizontallyCenterInParent];
    [self verticallyCenterInParent];
}

-(void)horizontallyCenterInParent
{
    if ( self.superview == nil )
        return;
    CGRect newFrame = self.frame;
    newFrame.origin.x =
        self.superview.frame.size.width / 2 -
        self.frame.size.width / 2;
    newFrame.origin.x = roundf(newFrame.origin.x);
    self.frame = newFrame;
}

-(void)verticallyCenterInParent
{
    if ( self.superview == nil )
        return;
    CGRect newFrame = self.frame;
    newFrame.origin.y =
        self.superview.frame.size.height / 2 -
        self.frame.size.height / 2;
    newFrame.origin.y = roundf(newFrame.origin.y);
    self.frame = newFrame;
}

#pragma mark - align in parent view

-(void)alignInParentRight
{
    if ( self.superview == nil )
        return;
    CGRect newFrame = self.frame;
    newFrame.origin.x = self.superview.frame.size.width - self.frame.size.width;
    self.frame = newFrame;
}

-(void)alignInParentTop
{
    if ( self.superview == nil )
        return;
    CGRect newFrame = self.frame;
    newFrame.origin.y = 0;
    self.frame = newFrame;
}

-(void)alignInParentLeft
{
    if ( self.superview == nil )
        return;
    CGRect newFrame = self.frame;
    newFrame.origin.x = 0;
    self.frame = newFrame;
}

-(void)alignInParentBottom
{
    if ( self.superview == nil )
        return;
    CGRect newFrame = self.frame;
    newFrame.origin.y = self.superview.frame.size.height - self.frame.size.height;
    self.frame = newFrame;
}

#pragma mark - move

-(void)move:(CGPoint)offset
{
    CGRect newFrame = self.frame;
    newFrame.origin.x += offset.x;
    newFrame.origin.y += offset.y;
    self.frame = newFrame;
}

#pragma mark - is portrait

-(BOOL)isPortrait
{
    return self.bounds.size.height > self.bounds.size.width;
}

@end
