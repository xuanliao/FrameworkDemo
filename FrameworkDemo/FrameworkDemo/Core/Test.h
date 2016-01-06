//
//  Test.h
//  FrameworkDemo
//
//  Created by XuanPeng on 15/12/20.
//  Copyright © 2015年 AndyXuan. All rights reserved.
//

#import <Foundation/Foundation.h>

#import <UIKit/UIKit.h>
@class POPAnimation;

/**
 @author XuanPeng, 15-12-14 13:12:23
 
 动画结束时的block
 
 @param anim     实现的动画
 @param finished 是否结束
 */
typedef void (^AMAnimationCompletionBlock)(POPAnimation *anim, BOOL finished);

@interface Test : NSObject

+ (void)testSuccess;

/**
 @author XuanPeng, 15-12-14 13:12:47
 
 显示透明动画
 
 @param view      需要执行的view
 @param fromValue 开始值
 @param toValue   结束值
 @param duration  动画时间
 @param key       实现动画的key
 @param block     结束的block
 */
+ (void)alphaAnimationWithView:(UIView*)view fromValue:(id)fromValue toValue:(id)toValue
                      duration:(CGFloat)duration forKey:(NSString*)key
               completionBlock:(AMAnimationCompletionBlock)block;



@end
