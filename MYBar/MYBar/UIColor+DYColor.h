//
//  UIColor+DYColor.h
//  TDYDemo
//
//  Created by 唐道勇 on 16/11/19.
//  Copyright © 2016年 唐道勇. All rights reserved.
//
/*UIColor的扩展*/
#import <UIKit/UIKit.h>

@interface UIColor (DYColor)

/**RGBColor*/
+ (UIColor *)tdy_RGBColorRed:(CGFloat)red andGreen:(CGFloat)green andBlue:(CGFloat)blue andAlpha:(CGFloat)alpha;
/**生成随机色*/
+ (instancetype)tdy_Arc4randomColor;

@end
