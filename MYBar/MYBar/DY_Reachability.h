//
//  DY_Reachability.h
//  TDYDemo
//
//  Created by 唐道勇 on 16/11/18.
//  Copyright © 2016年 唐道勇. All rights reserved.
//
/*网络可达性的检查*/
#import <Foundation/Foundation.h>

/*mode_one同步，mode_two异步*/
typedef NS_ENUM(NSInteger, my_mode){
    mode_one,
    mode_two
};

@interface DY_Reachability : NSObject
/*单利*/
+ (instancetype)shardDYReachabilityMode:(my_mode)app_mode;
@end
