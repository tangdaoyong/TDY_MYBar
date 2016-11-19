//
//  AFHTTPSessionManager+TDYMyManager.m
//  NthCloudHome
//
//  Created by 唐道勇 on 16/8/9.
//  Copyright © 2016年 唐道勇. All rights reserved.
//

#import "AFHTTPSessionManager+TDYMyManager.h"

static const NSUInteger kDefaultTimeoutInterval = 6;

@implementation AFHTTPSessionManager (TDYMyManager)

+ (instancetype) limitFreeManager{
    AFHTTPSessionManager *manager = [[AFHTTPSessionManager alloc] initWithBaseURL:[NSURL URLWithString:BEST_URLSTRING]];//设置bestURL
    manager.requestSerializer.timeoutInterval = kDefaultTimeoutInterval;
    manager.responseSerializer = [AFJSONResponseSerializer serializer];
    manager.responseSerializer.acceptableContentTypes = [NSSet setWithObjects:@"text/html", @"application/json", nil];
    return manager;
}

@end
