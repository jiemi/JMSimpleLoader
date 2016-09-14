//
//  JMLoadView.h
//  JMLoadButton
//
//  Created by 萧锐杰 on 16/8/25.
//  Copyright © 2016年 萧锐杰. All rights reserved.
//

#import <UIKit/UIKit.h>
#define JMCircleStrokWidth 10
#define Radians(x)  (M_PI * (x) / 180.0)

#define InsetRadians_between_line M_PI / 6

#define JMLineAnimationTime 0.8
#define JMRotateAnimationTime (JMLineAnimationTime * 4 / 10)
#define JMFirstDotMoveAnimationTime (JMLineAnimationTime *  5 / 10)
#define JMFirstDotRestoreAnimationTime (JMLineAnimationTime *  6 / 10)


#define JMCircleRadius 100

#define JMFirstCircleLength  (4 * M_PI + (M_PI/2 - M_PI/12))
#define JMSecondCircleLength  (4 * M_PI +(M_PI/2 - M_PI/12))
#define JMThirdCircleLength  (M_PI*5/4 + M_PI/3)

#define JMFirstCircelStartAngle  (-M_PI/2)
#define JMFirstCircelEndAngle  (4*M_PI - M_PI/12)

#define JMSecondCircelStartAngle  (-M_PI/2)
#define JMSecondCircelEndAngle  (4*M_PI - M_PI/12)

#define JMThirdCircelStartAngle  (-M_PI/3)
#define JMthirdCircelEndAngle  (M_PI+M_PI/5)

#define JMRGBA(r,g,b,a) [UIColor colorWithRed:(r)/255.0f green:(g)/255.0f blue:(b)/255.0f alpha:a]


#define  JMStrokeWidth 15
@interface JMSimpleLoader : UIView

//- (void)startAnimation;
@end
