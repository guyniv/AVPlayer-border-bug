//
//  ViewController.m
//  AVPlayerBug
//
//  Created by Guy Niv on 26/05/2019.
//  Copyright © 2019 Guy Niv. All rights reserved.
//

#import "BUGViewController.h"

#import "BUGVideoView.h"

@interface BUGViewController ()

@property (readonly, nonatomic) BUGVideoView *videoView;

@end

@implementation BUGViewController

- (void)viewDidLoad {
  [super viewDidLoad];
  [self setupVideoView];
  self.view.backgroundColor = [UIColor whiteColor];
}

- (void)setupVideoView {
  _videoView = [[BUGVideoView alloc] initWithFrame:CGRectZero];
  [self.view addSubview:self.videoView];
}

- (void)viewDidLayoutSubviews {
  self.videoView.frame = CGRectInset(self.view.bounds, 50, 50);
}

@end
