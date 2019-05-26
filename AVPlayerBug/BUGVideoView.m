// Copyright (c) 2019 Lightricks. All rights reserved.
// Created by Guy Niv.

#import "BUGVideoView.h"

#import <AVFoundation/AVPlayer.h>
#import <AVFoundation/AVPlayerItem.h>
#import <AVFoundation/AVPlayerLayer.h>

NS_ASSUME_NONNULL_BEGIN

@interface BUGVideoView()

@property (readonly, nonatomic) AVPlayerLayer *playerLayer;

@end

@implementation BUGVideoView

- (instancetype)initWithFrame:(CGRect)frame {
  if (self = [super initWithFrame:frame]) {
    [self setupPlayer];
  }
  return self;
}

- (void)setupPlayer {
  NSURL *videoURL = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"PromotionVideo"
                                                                           ofType:@"mp4"]];
  
  AVPlayerItem *item = [AVPlayerItem playerItemWithURL:videoURL];
  AVPlayer *player = [AVPlayer playerWithPlayerItem:item];
    
  _playerLayer = [AVPlayerLayer playerLayerWithPlayer:player];
  [self.layer addSublayer:self.playerLayer];
  
  [player seekToTime:kCMTimeZero];
  [player play];
}

- (void)layoutSubviews {
  self.playerLayer.frame = self.bounds;
}

@end

NS_ASSUME_NONNULL_END
