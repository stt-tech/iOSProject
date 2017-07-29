//
//  Header.h
//  iOSProject
//
//  Created by Alpha on 2017/6/7.
//  Copyright © 2017年 STT. All rights reserved.
//


#import <AsyncDisplayKit/AsyncDisplayKit.h>

// 空值判断
#define IsNullObject(obj) (obj == nil || obj == Nil || obj == NULL || [obj isKindOfClass:[NSNull class]] || ![obj isKindOfClass:[NSObject class]])

#define IsNullString(str) (IsNullObject(str) || ![str isKindOfClass:[NSString class]] || [str length] == 0)


#define  placeHolder @"plachtor"
