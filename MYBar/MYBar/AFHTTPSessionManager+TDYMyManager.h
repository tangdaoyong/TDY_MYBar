//
//  AFHTTPSessionManager+TDYMyManager.h
//  NthCloudHome
//
//  Created by 唐道勇 on 16/8/9.
//  Copyright © 2016年 唐道勇. All rights reserved.
//

#import <AFNetworking/AFNetworking.h>

@interface AFHTTPSessionManager (TDYMyManager)
/**
 *  manager的初始化
 */
+ (instancetype) limitFreeManager;

@end
