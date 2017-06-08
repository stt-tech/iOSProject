//
//  IMManager.m
//  即时通讯
//
//  Created by Alpha on 2017/5/16.
//  Copyright © 2017年 STT. All rights reserved.
//

#import "IMManager.h"

#import <ImSDK/ImSDK.h>

@implementation IMManager

singleton_implementation(IMManager);

+(void)initIMConfig
{
    [[IMManager sharedIMManager] initIMConfig];
}

-(void)initIMConfig
{
    TIMManager * manager = [TIMManager sharedInstance];
    
    
}


@end

