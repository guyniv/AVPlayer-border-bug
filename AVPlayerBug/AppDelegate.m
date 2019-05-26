//
//  AppDelegate.m
//  AVPlayerBug
//
//  Created by Guy Niv on 26/05/2019.
//  Copyright © 2019 Guy Niv. All rights reserved.
//

#import "AppDelegate.h"
#import "BUGViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
  self.window = [[UIWindow alloc] init];
  self.window.rootViewController = [[BUGViewController alloc] init];
  [self.window makeKeyAndVisible];
  return YES;
}

@end
