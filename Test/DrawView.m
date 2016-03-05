//
//  DrawView.m
//  Object-c-Test
//
//  Created by Apple on 16/3/3.
//  Copyright © 2016年 Apple. All rights reserved.
//

#import "DrawView.h"

@interface DrawView()

@property (nonatomic, strong) UIBezierPath *path;

@end

@implementation DrawView


- (void)awakeFromNib{
    UIPanGestureRecognizer *panG = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(panGesture:)];
    [self addGestureRecognizer:panG];

    UIBezierPath *path = [UIBezierPath bezierPath];
    self.path = path;
}

- (void) panGesture: (UIPanGestureRecognizer *)pan{

    CGPoint point = [pan locationInView:self];
    if (pan.state == UIGestureRecognizerStateBegan) {
        [self.path moveToPoint:point];
    }else if(pan.state == UIGestureRecognizerStateChanged){
        [self.path addLineToPoint:point];

        [self setNeedsDisplay];
    }
}

- (void)drawRect:(CGRect)rect{

    [self.path stroke];
}

@end
