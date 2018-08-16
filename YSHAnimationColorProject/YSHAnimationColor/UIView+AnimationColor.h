//
//  UIView+AnimationColor.h
//  YSHAnimationColor
//
//  Created by TrojanVirus on 2018/8/16.
//  Copyright © 2018年 HuaTeng-Ysh. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (AnimationColor)
//渐变色颜色数组
@property (nonatomic,strong) NSArray *colors;

//渐变色分割点
@property (nonatomic,strong) NSArray<NSNumber *> *locations;

//开始位置（0，0）（1，1）
@property CGPoint startPoint;

//结束位置
@property CGPoint endPoint;

+(UIView *)animationWithColors:(NSArray *)colors locations:(NSArray *)locations startPoint:(CGPoint)startPoint endPoint:(CGPoint)endPoint;

-(void)setAnimationBackgroundColors:(NSArray *)colors locations:(NSArray *)locations startPoint:(CGPoint)startPoint endPoint:(CGPoint)endPoint;

@end
