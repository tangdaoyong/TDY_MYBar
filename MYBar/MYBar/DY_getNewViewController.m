//
//  DY_getNewViewController.m
//  TDYDemo
//
//  Created by 唐道勇 on 16/11/19.
//  Copyright © 2016年 唐道勇. All rights reserved.
//

#import "DY_getNewViewController.h"

@implementation DY_getNewViewController
/*
 我们在非视图类中想要随时展示一个view时，需要将被展示的view加到当前view的子视图，或用当前view presentViewController，或pushViewContrller，这些操作都需要获取当前正在显示的ViewController。
 */
//获取当前屏幕显示的viewcontroller
- (UIViewController *) tdy_getNewViewController{
    UIViewController *result = nil;
    
    UIWindow * window = [[UIApplication sharedApplication] keyWindow];
    if (window.windowLevel != UIWindowLevelNormal)
    {
        NSArray *windows = [[UIApplication sharedApplication] windows];
        for(UIWindow * tmpWin in windows)
        {
            if (tmpWin.windowLevel == UIWindowLevelNormal)
            {
                window = tmpWin;
                break;
            }
        }
    }
    UIView *frontView = [[window subviews] objectAtIndex:0];
    id nextResponder = [frontView nextResponder];
    if ([nextResponder isKindOfClass:[UIViewController class]]){
        result = nextResponder;
    }else{
        result = window.rootViewController;
    }
    return result;
}
//获取当前屏幕中present出来的viewcontroller
- (UIViewController *)tdy_getPresentedViewController
{
    UIViewController *appRootVC = [UIApplication sharedApplication].keyWindow.rootViewController;
    UIViewController *topVC = appRootVC;
    if (topVC.presentedViewController) {
        topVC = topVC.presentedViewController;
    }
    
    return topVC;
}
@end
