//
//  UIView+WTAAutoLayoutHelpers.m
//  WTALayoutHelpers
//
//  Created by Trung Tran on 2/19/14.
//  Copyright (c) 2014 WillowTree Apps, Inc. All rights reserved.
//

#import "UIView+WTAAutoLayoutHelpers.h"
#import "NSLayoutConstraint+WTAAutoLayoutHelpers.h"

@implementation UIView (WTAAutoLayoutHelpers)

#pragma mark - Convenience Constructors

+ (id)wta_autolayoutView;
{
    UIView *view = [UIView new];
    [view setTranslatesAutoresizingMaskIntoConstraints:NO];
    return view;
}

#pragma mark - Convenience Methods for Common Constraints

- (NSLayoutConstraint *)wta_addLeadingConstraintToSuperviewOffset:(CGFloat)offset
{
    return [UIView wta_addLeadingConstraintWithView:self toView:[self superview] offset:offset];
}

- (NSLayoutConstraint *)wta_addTrailingConstraintToSuperviewOffset:(CGFloat)offset
{
    return [UIView wta_addTrailingConstraintWithView:self toView:[self superview] offset:offset];
}

- (NSLayoutConstraint *)wta_addTopConstraintToSuperviewOffset:(CGFloat)offset
{
    return [UIView wta_addTopConstraintWithView:self toView:[self superview] offset:offset];
}

- (NSLayoutConstraint *)wta_addBottomConstraintToSuperviewOffset:(CGFloat)offset
{
    return [UIView wta_addBottomConstraintWithView:self toView:[self superview] offset:offset];
}

+ (NSLayoutConstraint *)wta_addLeadingConstraintWithView:(UIView *)withView toView:(UIView *)toView offset:(CGFloat)offset
{
    NSLayoutConstraint *constraint = [NSLayoutConstraint wta_leadingConstraintWithView:withView toView:toView offset:offset];
    [[withView superview] addConstraint:constraint];
    return constraint;
}

+ (NSLayoutConstraint *)wta_addTrailingConstraintWithView:(UIView *)withView toView:(UIView *)toView offset:(CGFloat)offset
{
    NSLayoutConstraint *constraint = [NSLayoutConstraint wta_trailingConstraintWithView:withView toView:toView offset:offset];
    [[withView superview] addConstraint:constraint];
    return constraint;
}

+ (NSLayoutConstraint *)wta_addTopConstraintWithView:(UIView *)withView toView:(UIView *)toView offset:(CGFloat)offset
{
    NSLayoutConstraint *constraint = [NSLayoutConstraint wta_topConstraintWithView:withView toView:toView offset:offset];
    [[withView superview] addConstraint:constraint];
    return constraint;
}

+ (NSLayoutConstraint *)wta_addBottomConstraintWithView:(UIView *)withView toView:(UIView *)toView offset:(CGFloat)offset
{
    NSLayoutConstraint *constraint = [NSLayoutConstraint wta_bottomConstraintWithView:withView toView:toView offset:offset];
    [[withView superview] addConstraint:constraint];
    return constraint;
}

#pragma mark - Centering Constraints

- (NSLayoutConstraint *)wta_addVerticallyCenterConstraintToSuperviewOffset:(CGFloat)offset
{
    return [UIView wta_addVerticallyCenterConstraintWithView:self toView:[self superview] offset:offset];
}

- (NSLayoutConstraint *)wta_addHorizontallyCenterConstraintToSuperviewOffset:(CGFloat)offset
{
    return [UIView wta_addHorizontallyCenterConstraintWithView:self toView:[self superview] offset:offset];
}

+ (NSLayoutConstraint *)wta_addHorizontallyCenterConstraintWithView:(UIView *)withView toView:(UIView *)toView offset:(CGFloat)offset
{
    NSLayoutConstraint *constraint = [NSLayoutConstraint constraintWithItem:withView
                                                                  attribute:NSLayoutAttributeCenterX
                                                                  relatedBy:NSLayoutRelationEqual
                                                                     toItem:toView
                                                                  attribute:NSLayoutAttributeCenterX
                                                                 multiplier:1
                                                                   constant:offset];
    [[withView superview] addConstraint:constraint];
    return constraint;
}

#pragma mark - Size Constraints

- (NSLayoutConstraint *)wta_addHeightConstraint:(CGFloat)height
{
    NSLayoutConstraint *constraint = [NSLayoutConstraint constraintWithItem:self
                                                                  attribute:NSLayoutAttributeHeight
                                                                  relatedBy:NSLayoutRelationEqual
                                                                     toItem:nil
                                                                  attribute:NSLayoutAttributeNotAnAttribute
                                                                 multiplier:1.0
                                                                   constant:height];
    
    [self addConstraint:constraint];
    return constraint;
}

- (NSLayoutConstraint *)wta_addWidthConstraint:(CGFloat)width
{
    NSLayoutConstraint *constraint = [NSLayoutConstraint constraintWithItem:self
                                                                  attribute:NSLayoutAttributeWidth
                                                                  relatedBy:NSLayoutRelationEqual
                                                                     toItem:nil
                                                                  attribute:NSLayoutAttributeNotAnAttribute
                                                                 multiplier:1.0
                                                                   constant:width];
    
    [self addConstraint:constraint];
    return constraint;
}

@end