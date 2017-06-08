//
//  IMManager.h
//  即时通讯
//
//  Created by Alpha on 2017/5/16.
//  Copyright © 2017年 STT. All rights reserved.
//

#import "BaseManager.h"

@interface IMManager : BaseManager


singleton_interface(IMManager);

+(void)initIMConfig;


@end
