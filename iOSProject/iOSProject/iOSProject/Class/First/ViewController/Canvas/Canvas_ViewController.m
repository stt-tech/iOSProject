//
//  Canvas_ViewController.m
//  iOSPro
//
//  Created by Alpha on 2017/6/2.
//  Copyright © 2017年 STT. All rights reserved.
//

#import "Canvas_ViewController.h"
#import "CSAnimationView.h"

@interface Canvas_ViewController ()

@end

@implementation Canvas_ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self startCancasAnimation];
    
}
-(void)startCancasAnimation
{
    CSAnimationView *animationView = [[CSAnimationView alloc] initWithFrame:CGRectMake(0, 400, 100, 100)];
    animationView.backgroundColor = [UIColor whiteColor];
    animationView.duration = 0.5;
    animationView.delay = 0;
    animationView.type = CSAnimationTypeMorph;
    [self.view addSubview:animationView];
    
    //添加你想增加效果的 View 为 animationView 的子视图
    UIImageView * image = [[UIImageView alloc] initWithFrame:animationView.bounds];
    [animationView addSubview:image];
    image.image = [UIImage imageNamed:@"plachtor"];
    
    [animationView startCanvasAnimation];
}
/**
 *  <#Description#>
 *
 *  @param animated <#animated description#>
 */
-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    [self.view startCanvasAnimation];
}


@end
