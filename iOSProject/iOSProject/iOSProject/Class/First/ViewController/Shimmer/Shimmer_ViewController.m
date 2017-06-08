//
//  Shimmer_ViewController.m
//  iOSPro
//
//  Created by Alpha on 2017/6/2.
//  Copyright © 2017年 STT. All rights reserved.
//

#import "Shimmer_ViewController.h"
#import "FBShimmeringView.h"

@interface Shimmer_ViewController ()
{
    
    FBShimmeringView *_shimmeringView;
    UILabel *_logoLabel;
}

@end

@implementation Shimmer_ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor redColor];
    [self shimmerShowAnimation];
}

-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    CGRect shimmeringFrame = self.view.bounds;
    shimmeringFrame.origin.y = shimmeringFrame.size.height * 0.68;
    shimmeringFrame.size.height = shimmeringFrame.size.height * 0.32;
    _shimmeringView.frame = shimmeringFrame;
}

-(void)shimmerShowAnimation
{
    
    _shimmeringView = [[FBShimmeringView alloc] init];
    _shimmeringView.shimmering = YES;
    _shimmeringView.shimmeringBeginFadeDuration = 0.3;
    _shimmeringView.shimmeringOpacity = 0.3;
    [self.view addSubview:_shimmeringView];
    
    _logoLabel = [[UILabel alloc] initWithFrame:_shimmeringView.bounds];
    _logoLabel.text = @"Shimmer";
    _logoLabel.font = [UIFont fontWithName:@"HelveticaNeue-UltraLight" size:60.0];
    _logoLabel.textColor = [UIColor whiteColor];
    _logoLabel.textAlignment = NSTextAlignmentCenter;
    _logoLabel.backgroundColor = [UIColor clearColor];
    _shimmeringView.contentView = _logoLabel;
}

@end
