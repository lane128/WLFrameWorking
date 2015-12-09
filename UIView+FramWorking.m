//
//  UIView+FramWorking.m
//
//  Created by Lane on 15/12/9.
//  Copyright © 2015年 Lane. All rights reserved.
//

#import "UIView+FramWorking.h"

@implementation UIView (FrameWorking)
#pragma mark - Properties getter
- (CGFloat)minX {
    return CGRectGetMinX(self.frame);
}

- (CGFloat)maxX {
    return CGRectGetMaxX(self.frame);
}

- (CGFloat)minY {
    return CGRectGetMinY(self.frame);
}

- (CGFloat)maxY {
    return CGRectGetMaxY(self.frame);
}

- (CGFloat)midX {
    return CGRectGetMidX(self.frame);
}

- (CGFloat)midY {
    return CGRectGetMidY(self.frame);
}

- (CGFloat)width {
    return CGRectGetWidth(self.frame);
}

- (CGFloat)height {
    return CGRectGetHeight(self.frame);
}

- (CGFloat)halfWidth {
    return self.frame.size.width / 2;
}

- (CGFloat)halfHeight {
    return self.frame.size.height / 2;
}

#pragma mark - Properties setter
- (void)setX:(CGFloat)x {
    CGRect rect = self.frame;
    rect.origin.x = x;
    self.frame = rect;
}

- (void)setY:(CGFloat)y {
    CGRect rect = self.frame;
    rect.origin.y = y;
    self.frame = rect;
}

- (void)setCenterX:(CGFloat)x {
    self.center = CGPointMake(x, self.center.y);
}

- (void)setCenterY:(CGFloat)y {
    self.center = CGPointMake(self.center.x, y);
}

- (void)setOrigin:(CGPoint)origin {
    CGRect rect = self.frame;
    rect.origin = origin;
    self.frame = rect;
}

- (void)setWidth:(CGFloat)width {
    CGRect rect = self.frame;
    rect.size.width = width;
    self.frame = rect;
}

- (void)setHeight:(CGFloat)height {
    CGRect rect = self.frame;
    rect.size.height = height;
    self.frame = rect;
}

- (void)setSize:(CGSize)size {
    CGRect rect = self.frame;
    rect.size = size;
    self.frame = rect;
}

#pragma mark - Chain setter
- (UIView * (^)(CGFloat))makeX {
    return ^id(CGFloat X) {
        [self setX:X];
        return self;
    };
}

- (UIView * (^)(CGFloat))makeY {
    return ^id(CGFloat Y) {
        [self setY:Y];
        return self;
    };
}

- (UIView * (^)(CGFloat))makeWidth {
    return ^id(CGFloat width) {
        [self setWidth:width];
        return self;
    };
}

- (UIView * (^)(CGFloat))makeHeight {
    return ^id(CGFloat height) {
        [self setHeight:height];
        return self;
    };
}

- (UIView * (^)(CGFloat))makeCenterX {
    return ^id(CGFloat centerX) {
        [self setCenterX:centerX];
        return self;
    };
}

- (UIView * (^)(CGFloat))makeCenterY {
    return ^id(CGFloat centerY) {
        [self setCenterY:centerY];
        return self;
    };
}

- (UIView * (^)(CGPoint))makeOrigin {
    return ^id(CGPoint origin) {
        [self setOrigin:origin];
        return self;
    };
}

- (UIView * (^)(CGSize))makeSize {
    return ^id(CGSize size) {
        [self setSize:size];
        return self;
    };
}

#pragma mark - Semantic properties
- (UIView *)with {
    return self;
}

@end
