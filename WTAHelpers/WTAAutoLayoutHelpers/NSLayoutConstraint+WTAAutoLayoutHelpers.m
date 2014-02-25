//
//  NSLayoutConstraint+WTAAutoLayoutHelpers.m
//  WTAHelpers
//
//  Created by Trung Tran on 2/25/14.
//  Copyright (c) 2014 WillowTree Apps, Inc. All rights reserved.
//

#import "NSLayoutConstraint+WTAAutoLayoutHelpers.h"

@implementation NSLayoutConstraint (WTAAutoLayoutHelpers)

+ (NSLayoutConstraint *)wta_leadingConstraintWithView:(UIView *)withView toView:(UIView *)toView offset:(CGFloat)offset
{
    NSLayoutConstraint *constraint = [NSLayoutConstraint constraintWithItem:withView
                                                                  attribute:NSLayoutAttributeLeading
                                                                  relatedBy:NSLayoutRelationEqual
                                                                     toItem:toView
                                                                  attribute:NSLayoutAttributeLeading
                                                                 multiplier:1.0
                                                                   constant:offset];
    return constraint;
}

+ (NSLayoutConstraint *)wta_trailingConstraintWithView:(UIView *)withView toView:(UIView *)toView offset:(CGFloat)offset;
{
    NSLayoutConstraint *constraint = [NSLayoutConstraint constraintWithItem:withView
                                                                  attribute:NSLayoutAttributeTrailing
                                                                  relatedBy:NSLayoutRelationEqual
                                                                     toItem:toView
                                                                  attribute:NSLayoutAttributeTrailing
                                                                 multiplier:1.0
                                                                   constant:offset];
    return constraint;
}

+ (NSLayoutConstraint *)wta_topConstraintWithView:(UIView *)withView toView:(UIView *)toView offset:(CGFloat)offset;
{
    NSLayoutConstraint *constraint = [NSLayoutConstraint constraintWithItem:withView
                                                                  attribute:NSLayoutAttributeTop
                                                                  relatedBy:NSLayoutRelationEqual
                                                                     toItem:toView
                                                                  attribute:NSLayoutAttributeTop
                                                                 multiplier:1.0
                                                                   constant:offset];
    return constraint;
}

+ (NSLayoutConstraint *)wta_bottomConstraintWithView:(UIView *)withView toView:(UIView *)toView offset:(CGFloat)offset;
{
    NSLayoutConstraint *constraint = [NSLayoutConstraint constraintWithItem:withView
                                                                  attribute:NSLayoutAttributeBottom
                                                                  relatedBy:NSLayoutRelationEqual
                                                                     toItem:toView
                                                                  attribute:NSLayoutAttributeBottom
                                                                 multiplier:1.0
                                                                   constant:offset];
    return constraint;
}

///--------------------------------------------------
/// @name Convenience Methods for Common Constraints
///--------------------------------------------------

+ (NSLayoutConstraint *)wta_horizontallyCenterConstraintWithView:(UIView *)withView toView:(UIView *)toView offset:(CGFloat)offset;
{
    NSLayoutConstraint *constraint = [NSLayoutConstraint constraintWithItem:withView
                                                                  attribute:NSLayoutAttributeCenterX
                                                                  relatedBy:NSLayoutRelationEqual
                                                                     toItem:toView
                                                                  attribute:NSLayoutAttributeCenterX
                                                                 multiplier:1
                                                                   constant:offset];
    return constraint;
}

+ (NSLayoutConstraint *)wta_verticallyCenterConstraintWithView:(UIView *)withView toView:(UIView *)toView offset:(CGFloat)offset;
{
    NSLayoutConstraint *constraint = [NSLayoutConstraint constraintWithItem:withView
                                                                  attribute:NSLayoutAttributeCenterY
                                                                  relatedBy:NSLayoutRelationEqual
                                                                     toItem:toView
                                                                  attribute:NSLayoutAttributeCenterY
                                                                 multiplier:1
                                                                   constant:offset];
    return constraint;
}

///--------------------------------------------------
/// @name Convenience Methods for Common Constraints
///--------------------------------------------------

+ (NSLayoutConstraint *)wta_heightConstraintWithView:(UIView *)view height:(CGFloat)height;
{
    NSLayoutConstraint *constraint = [NSLayoutConstraint constraintWithItem:view
                                                                  attribute:NSLayoutAttributeHeight
                                                                  relatedBy:NSLayoutRelationEqual
                                                                     toItem:nil
                                                                  attribute:NSLayoutAttributeNotAnAttribute
                                                                 multiplier:1.0
                                                                   constant:height];
    return constraint;
}

+ (NSLayoutConstraint *)wta_widthConstraintWithView:(UIView *)view width:(CGFloat)width;
{
    NSLayoutConstraint *constraint = [NSLayoutConstraint constraintWithItem:view
                                                                  attribute:NSLayoutAttributeWidth
                                                                  relatedBy:NSLayoutRelationEqual
                                                                     toItem:nil
                                                                  attribute:NSLayoutAttributeNotAnAttribute
                                                                 multiplier:1.0
                                                                   constant:width];
    return constraint;
}

@end