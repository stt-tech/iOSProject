//
//  NSOperationViewController.m
//  iOSProject
//
//  Created by Alpha on 2017/8/2.
//  Copyright © 2017年 STT. All rights reserved.
//

#import "NSOperationViewController.h"

@implementation NSOperationViewController


//
-(void)viewDidLoad
{
    [super viewDidLoad];
    UILabel * label = [[UILabel alloc] init];
    [self.view addSubview:label];
    label.frame = CGRectMake(100, 20, SCREEN_WIDTH - 40, 100);
    label.text = @"这里本来是要写下NSOperation 的底层信息的";
    label.font = [UIFont systemFontOfSize:17];
    labe.textColor = [UIColor redColor];
}

@end
