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
    //这里本来是要写下NSOperation 的底层信息的
    
    UILabel * label = [[UILabel alloc] init];
    [self.view addSubnode:label];
//    [UIScreen mainScreen].bounds.size.width
//    label.frame = CGRectMake(100, 100, , <#CGFloat height#>)
    
}

@end
