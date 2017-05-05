//
//  TVSource.m
//  We'll see
//
//  Created by Sunny on 1/1/16.
//  Copyright © 2016 Nine. All rights reserved.
//

#import "TVSource.h"

@implementation TVSource

+ (NSArray *)getTVName {
    NSArray *arr = [[NSArray alloc] initWithObjects:@"香港卫视", @"CCTV5", @"CCTV1", @"NPUTV", @"CCTV13", @"亚太第一卫视", @"凤凰中文", @"家庭影院",@"hjw",@"OASIS", nil];
    return arr;
}

+ (NSArray *)getTVPath {
    NSArray *arr = [[NSArray alloc] initWithObjects:@"rtmp://live.hkstv.hk.lxdns.com/live/hks", @"rtmp://202.117.80.19:1935/live/live1", @"rtmp://202.117.80.19:1935/live/live2", @"rtmp://202.117.80.19:1935/live/live3", @"rtmp://202.117.80.19:1935/live/live4", @"rtmp://v1.one-tv.com:1935/live/mpegts.stream", @"http://zv.3gv.ifeng.com/zhongwen.m3u8", @"rtsp://173.224.209.43/day",@"rtsp://192.168.123.244:8554/video1.264",@"rtsp://192.168.43.1:8554/CamOS", nil];
    return arr;
}

@end
