//
//  DY_Reachability.m
//  TDYDemo
//
//  Created by 唐道勇 on 16/11/18.
//  Copyright © 2016年 唐道勇. All rights reserved.
//

#import "DY_Reachability.h"

@interface DY_Reachability ()

@property (nonatomic, strong) Reachability *my_reach;

@end

@implementation DY_Reachability

/*单利*/
+ (instancetype)shardDYReachabilityMode:(my_mode)app_mode{
    static DY_Reachability *my_Reachability = nil;
    if (!my_Reachability) {
        static dispatch_once_t onceToken;
        dispatch_once(&onceToken, ^{
            my_Reachability = [[DY_Reachability alloc] init];
            [my_Reachability tdy_ReachabilitMode:app_mode];
        });
    }
    return my_Reachability;
}
/*启动APP网络可达性检查*/
- (void) tdy_ReachabilitMode:(my_mode)app_mode{
    switch (app_mode) {
        case 1:
            [self tdy_ReachabilitModeTwo];
            break;
        default:
            [self tdy_ReachabilitModeOne];
            break;
    }
}
/*异步*/
- (void) tdy_ReachabilitModeTwo{
    //注册监听
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(reachabilityChanged:)
                                                 name:kReachabilityChangedNotification
                                               object:nil];
    self.my_reach = [Reachability reachabilityWithHostName:@"www.apple.com"];
    // Tell the reachability that we DON'T want to be reachable on 3G/EDGE/CDMA
    //self.my_reach.reachableOnWWAN = YES;
    [self.my_reach startNotifier];//开始监听
}
/*网络连接改变调用的监听方法*/
- (void) reachabilityChanged:(NSNotification *)my_notification{
    Reachability*reach = [my_notification object];
    if([reach isKindOfClass:[Reachability class]]){
        NetworkStatus status = [reach currentReachabilityStatus];
        //Insert your code here
        NSLog(@"当前网络为%@", [self tdy_stringFromStatus:status]);
    }
}
/*同步*/
- (void) tdy_ReachabilitModeOne{
    //使用同步的方式是比较简单，导入Reachability.h头文件，然后通过代码检查网络：
    //self.my_reach = [Reachability reachabilityForInternetConnection];
    //NetworkStatus status = [self.my_reach currentReachabilityStatus];
    //通过检查某个主机能否访问来判断当前网络是否可用：
    self.my_reach = [Reachability reachabilityWithHostName:@"www.apple.com"];
    NetworkStatus status = [self.my_reach currentReachabilityStatus];
    NSLog(@"当前网络为%@", [self tdy_stringFromStatus:status]);
}
/*状态转化为字符串*/
- (NSString *) tdy_stringFromStatus:(NetworkStatus)status{
    NSString *my_string = [NSString new];
    switch (status) {
        case NotReachable:
            my_string = @"Not Reachable";
            break;
        case ReachableViaWiFi:
            my_string = @"Reachable is WIFI";
            break;
        case ReachableViaWWAN:
            my_string = @"Reachable is WWAN";
            break;
        default:
            my_string = @"UnKnown";
            break;
    }
    return my_string;
}
-(void)dealloc{
    NSLog(@"清除");
}

@end
