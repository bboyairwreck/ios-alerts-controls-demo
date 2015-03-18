//
// Created by Eric Chee on 3/17/15.
// Copyright (c) 2015 Cheebros. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (ECAutoLayout)

- (NSLayoutConstraint *)centerXView:(UIView *)view withAncestor:(UIView *)ancestor;

- (NSLayoutConstraint *)centerYView:(UIView *)view withAncestor:(UIView *)ancestor;

- (NSLayoutConstraint *)bottomAlignView:(UIView *)view belowSibling:(UIView *)sibling;

- (NSLayoutConstraint *)paddingLeftWithView:(UIView *)view withAncestor:(UIView *)ancestor;
@end