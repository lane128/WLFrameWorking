//
//  UIView+FramWorking.h
//
//  Created by Lane on 15/12/9.
//  Copyright © 2015年 Lane. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (FrameWorking)
@property (assign, nonatomic, readonly) CGFloat minX;
@property (assign, nonatomic, readonly) CGFloat minY;
@property (assign, nonatomic, readonly) CGFloat midX;
@property (assign, nonatomic, readonly) CGFloat midY;
@property (assign, nonatomic, readonly) CGFloat maxX;
@property (assign, nonatomic, readonly) CGFloat maxY;
@property (assign, nonatomic, readonly) CGFloat width;
@property (assign, nonatomic, readonly) CGFloat height;
@property (assign, nonatomic, readonly) CGFloat halfWidth;
@property (assign, nonatomic, readonly) CGFloat halfHeight;

- (void)setX:(CGFloat)x;
- (void)setY:(CGFloat)y;
- (void)setCenterX:(CGFloat)x;
- (void)setCenterY:(CGFloat)y;
- (void)setOrigin:(CGPoint)origin;
- (void)setWidth:(CGFloat)width;
- (void)setHeight:(CGFloat)height;
- (void)setSize:(CGSize)size;

- (UIView * (^)(CGFloat))makeX;
- (UIView * (^)(CGFloat))makeY;
- (UIView * (^)(CGFloat))makeWidth;
- (UIView * (^)(CGFloat))makeHeight;
- (UIView * (^)(CGFloat))makeCenterX;
- (UIView * (^)(CGFloat))makeCenterY;
- (UIView * (^)(CGPoint))makeOrigin;
- (UIView * (^)(CGSize))makeSize;

@end

