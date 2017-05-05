//
//  Player.m
//  We'll see
//
//  Created by Sunny on 12/31/15.
//  Copyright © 2015 Nine. All rights reserved.
//

#import "Player.h"
//#import "VLCLibrary.h"
#import <MobileVLCKit/VLCLibrary.h>

@implementation Player

- (id)initWithView:(UIView *)playView andMediaPath:(NSString *)path {
    self = [super init];
    if (self) {
//        NSArray *options = @[@"--extraintf="];
        NSArray *options = @[@"-vvv"];
        
        _player = [[VLCMediaPlayer alloc] initWithOptions:options];
        _player.drawable = playView;
        VLCMedia *media = [VLCMedia mediaWithPath:path];
        [_player setMedia:media];
        
        [VLCLibrary sharedLibrary].debugLogging = YES;
        [VLCLibrary sharedLibrary].debugLoggingLevel = 0;
    }
    return self;
}

- (id)initWithView:(UIView *)playView andMediaURL:(NSURL *)url {
    self = [super init];
    if (self) {
//        NSArray *options = @[@"--extraintf="];
        NSArray *options = @[@"-vvv"];
        _player = [[VLCMediaPlayer alloc] initWithOptions:options];
        _player.drawable = playView;
        VLCMedia *media = [VLCMedia mediaWithURL:url];
        [_player setMedia:media];
    }
    return self;
}

- (void)playMedia {
    [_player play];
}

- (void)stopPlaying {
    [_player stop];
}

@end
