//
//  DY_AlertController.m
//  TDYDemo
//
//  Created by 唐道勇 on 16/11/19.
//  Copyright © 2016年 唐道勇. All rights reserved.
//

#import "DY_AlertController.h"

@implementation DY_AlertController

/*网络警告*/
- (void) tdy_warningAlertControllerInVC:(UIViewController *)my_VC andBlock:(myBlock)my_block{
    UIAlertController *my_alert = [UIAlertController alertControllerWithTitle:@"警告" message:@"网络" preferredStyle:UIAlertControllerStyleAlert];
    //添加按钮
    [my_alert addAction:[UIAlertAction actionWithTitle:@"取消" style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
        my_block(1);
    }]];
    [my_alert addAction:[UIAlertAction actionWithTitle:@"确定" style:UIAlertActionStyleDestructive handler:^(UIAlertAction * _Nonnull action) {
        my_block(2);
    }]];
    [my_VC presentViewController:my_alert animated:YES completion:^{
        
    }];
}

@end
