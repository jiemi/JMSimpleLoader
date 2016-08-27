//
//  JMCenterRotateView.m
//  JMLoadButton
//
//  Created by 萧锐杰 on 16/8/27.
//  Copyright © 2016年 萧锐杰. All rights reserved.
//

#import "JMCenterRotateView.h"

@implementation JMCenterRotateView


- (instancetype)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        [self setUpDotViews];
        [self firstDotMoveAnimation];
        self.backgroundColor = [UIColor blueColor];
    }
    return self;
}

- (void)setUpDotViews {
    self.firstDot = [JMDotView layer];
    self.secondDot = [JMDotView layer];
    self.thirdDot = [JMDotView layer];
    
   self.firstDot.backgroundColor = [UIColor greenColor].CGColor;
   self.secondDot.backgroundColor = [UIColor blueColor].CGColor;
   self.thirdDot.backgroundColor = [UIColor magentaColor].CGColor;

    
   [self.layer addSublayer:_firstDot];
   [self.layer addSublayer:_secondDot];
   [self.layer addSublayer:_thirdDot];
    
    CGFloat dotWidth = self.frame.size.width * 3 / 4 / 2;
    
    CGRect firstDotFrame = CGRectMake(0, 0, dotWidth, dotWidth);
    CGRect secondDotFrame = CGRectMake(0, self.frame.size.height-dotWidth, dotWidth, dotWidth);
    CGRect thirdDotFrame = CGRectMake(self.frame.size.width-dotWidth, secondDotFrame.origin.y, dotWidth, dotWidth);
    
    self.firstDot.frame = firstDotFrame;
    self.secondDot.frame = secondDotFrame;
    self.thirdDot.frame = thirdDotFrame;
    
    
}

- (void)firstDotMoveAnimation {
    CGFloat endX = self.frame.size.width - self.firstDot.frame.size.width+self.firstDot.frame.size.width/2;
    
    CABasicAnimation *moveAnimation = [CABasicAnimation animationWithKeyPath:@"position.x"];
    moveAnimation.toValue = [[NSNumber alloc] initWithFloat:endX];
    moveAnimation.fromValue = @(0);
    moveAnimation.fillMode = kCAFillModeForwards;
    moveAnimation.duration = 1.0;
   // moveAnimation.repeatCount = 1000;
    moveAnimation.removedOnCompletion = false;
    [self.firstDot addAnimation:moveAnimation forKey:@"1"];
    
    
    CABasicAnimation *changeAnimation = [CABasicAnimation animationWithKeyPath:@"factor"];
    changeAnimation.toValue = @(1);
    changeAnimation.fromValue = @(0);
    changeAnimation.fillMode = kCAFillModeForwards;
    changeAnimation.duration = 1.0;
  //  changeAnimation.repeatCount = 1000;
    changeAnimation.removedOnCompletion = false;
    [self.firstDot addAnimation:changeAnimation forKey:@""];
    
}
@end








