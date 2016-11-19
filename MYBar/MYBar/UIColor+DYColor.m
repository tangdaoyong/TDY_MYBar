//
//  UIColor+DYColor.m
//  TDYDemo
//
//  Created by 唐道勇 on 16/11/19.
//  Copyright © 2016年 唐道勇. All rights reserved.
//

#import "UIColor+DYColor.h"

@implementation UIColor (DYColor)

/**RGBColor*/
+ (UIColor *)tdy_RGBColorRed:(CGFloat)red andGreen:(CGFloat)green andBlue:(CGFloat)blue andAlpha:(CGFloat)alpha{
    return [UIColor colorWithRed:red / 255.0 green:green / 255.0 blue:blue / 255.0 alpha:alpha];
}
/**生成随机色*/
+ (instancetype)tdy_Arc4randomColor{
    return [UIColor colorWithRed:arc4random()%256 / (CGFloat)0xff green:arc4random()%256 / (CGFloat)0xff blue:arc4random()%256 / (CGFloat)0xff alpha:1];
}


@end
