//
//  Test.m
//  FrameworkDemo
//
//  Created by XuanPeng on 15/12/20.
//  Copyright © 2015年 AndyXuan. All rights reserved.
//

#import "Test.h"
#import "POP.h"

@implementation Test

+ (void)testSuccess {
    NSLog(@"Hello world, FrameworkDemo");
}

+ (void)alphaAnimationWithView:(UIView*)view fromValue:(id)fromValue toValue:(id)toValue
                      duration:(CGFloat)duration forKey:(NSString*)key
               completionBlock:(AMAnimationCompletionBlock)block {
    POPBasicAnimation *animation = [POPBasicAnimation animationWithPropertyNamed:kPOPViewAlpha];
    if (fromValue != nil) {
        animation.fromValue = fromValue;
    }
    if (toValue != nil) {
        animation.toValue = toValue;
    }
    animation.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
    animation.duration = duration;
    animation.completionBlock = block;
    [view pop_addAnimation:animation forKey:key];
}

@end
