//
//  DY_AlertController.h
//  TDYDemo
//
//  Created by 唐道勇 on 16/11/19.
//  Copyright © 2016年 唐道勇. All rights reserved.
//
/*交互型提示操作*/
#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

typedef void (^myBlock) (NSInteger);//声明block类型

@interface DY_AlertController : NSObject

/*网络警告*/
- (void) tdy_warningAlertControllerInVC:(UIViewController *)my_VC andBlock:(myBlock)my_block;

@end
