//
//  UIView+LayoutHelpers.m
//  


#import "UIView+BOTLayoutHelpers.h"

@implementation UIView(BOTLayoutHelpers)

#pragma mark - center in parent view

-(void)centerInParent
{
    [self centerInParentVertically];
    [self centerInParentHorizontally];
}

-(void)centerInParentHorizontally
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

-(void)centerInParentVertically
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

-(void)setOrigin:(CGPoint)origin
{
    CGRect newFrame = self.frame;
    newFrame.origin = origin;
    self.frame = newFrame;
}

-(void)setX:(CGFloat)offset
{
    CGRect newFrame = self.frame;
    newFrame.origin.x = offset;
    self.frame = newFrame;
}

-(void)setY:(CGFloat)offset
{
    CGRect newFrame = self.frame;
    newFrame.origin.y = offset;
    self.frame = newFrame;
}

#pragma mark - position

//position
- (void) moveToLeftOf:(UIView *) view
{
    CGRect newFrame = self.frame;
    newFrame.origin.x = view.frame.origin.x - self.frame.size.width;
    self.frame = newFrame;
}

- (void) moveToRightOf:(UIView *) view
{
    CGRect newFrame = self.frame;
    newFrame.origin.x = view.frame.origin.x + view.frame.size.width;
    self.frame = newFrame;
}

- (void) moveBelow:(UIView *) view
{
    CGRect newFrame = self.frame;
    newFrame.origin.y = view.frame.origin.y + view.frame.size.height;
    self.frame = newFrame;
}

- (void) moveOver:(UIView *) view
{
    CGRect newFrame = self.frame;
    newFrame.origin.y = view.frame.origin.y - self.frame.size.height;
    self.frame = newFrame;
}

#pragma mark - set size

- (void) setHeight:(CGFloat) height
{
    CGRect newFrame = self.frame;
    newFrame.size.height = height;
    self.frame = newFrame;
}

- (void) setWidth:(CGFloat) width
{
    CGRect newFrame = self.frame;
    newFrame.size.width = width;
    self.frame = newFrame;
}

-(void)setSize:(CGSize)size
{
    CGRect newFrame = self.frame;
    newFrame.size = size;
    self.frame = newFrame;
}

#pragma mark - is portrait

-(BOOL)isPortrait
{
    return self.bounds.size.height > self.bounds.size.width;
}

@end
