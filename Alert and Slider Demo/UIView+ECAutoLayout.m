//
// Created by Eric Chee on 3/17/15.
// Copyright (c) 2015 Cheebros. All rights reserved.
//

#import "UIView+ECAutoLayout.h"


@implementation UIView (ECAutoLayout)

// Add constraint for horizontally centering
- (NSLayoutConstraint *)centerXView:(UIView *)view withAncestor:(UIView *)ancestor
{
    view.translatesAutoresizingMaskIntoConstraints = NO;
    NSLayoutConstraint *centerXConstraint = [NSLayoutConstraint constraintWithItem:view
                                                                         attribute:NSLayoutAttributeCenterX
                                                                         relatedBy:NSLayoutRelationEqual
                                                                            toItem:ancestor
                                                                         attribute:NSLayoutAttributeCenterX
                                                                        multiplier:1.0f
                                                                          constant:0.0f];
    return centerXConstraint;
}

// Add constraint for vertical centering
- (NSLayoutConstraint *)centerYView:(UIView *)view withAncestor:(UIView *)ancestor
{
    view.translatesAutoresizingMaskIntoConstraints = NO;
    NSLayoutConstraint *centerYConstraint = [NSLayoutConstraint constraintWithItem:view
                                                                         attribute:NSLayoutAttributeCenterY
                                                                         relatedBy:NSLayoutRelationEqual
                                                                            toItem:ancestor
                                                                         attribute:NSLayoutAttributeCenterY
                                                                        multiplier:1.0f
                                                                          constant:0.0f];
    return centerYConstraint;
}

// Add constraint for bottom alignment
- (NSLayoutConstraint *)bottomAlignView:(UIView *)view belowSibling:(UIView *)sibling
{
    view.translatesAutoresizingMaskIntoConstraints = NO;
    NSLayoutConstraint *bottomAlginConstraint = [NSLayoutConstraint constraintWithItem:view
                                                                             attribute:NSLayoutAttributeTop
                                                                             relatedBy:NSLayoutRelationEqual
                                                                                toItem:sibling
                                                                             attribute:NSLayoutAttributeBottom
                                                                            multiplier:1.0f
                                                                              constant:0.0f];
    return bottomAlginConstraint;
}

// Add left constraint for padding
- (NSLayoutConstraint *)paddingLeftWithView:(UIView *)view withAncestor:(UIView *)ancestor
{


    NSLayoutConstraint *leftConstraint = [NSLayoutConstraint constraintWithItem:view
                                                                      attribute:NSLayoutAttributeLeft
                                                                      relatedBy:NSLayoutRelationEqual
                                                                         toItem:ancestor
                                                                      attribute:NSLayoutAttributeRight
                                                                     multiplier:1.0f
                                                                       constant:10.0f];


    return leftConstraint;
}


@end