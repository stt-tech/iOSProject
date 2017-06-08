//
//  BaseManager.h
//  即时通讯
//
//  Created by Alpha on 2017/5/16.
//  Copyright © 2017年 STT. All rights reserved.
//

#import <Foundation/Foundation.h>

#define singleton_interface(class) + (instancetype)shared##class

#define singleton_implementation(className) \
static className *_instance; \
+ (id)allocWithZone:(NSZone *)zone \
{ \
static dispatch_once_t onceToken; \
dispatch_once(&onceToken, ^{ \
_instance = [super allocWithZone:zone]; \
}); \
return _instance; \
} \
+ (className *)shared##className \
{ \
static dispatch_once_t onceToken; \
dispatch_once(&onceToken, ^{ \
_instance = [[self alloc] init]; \
}); \
return _instance; \
}

@interface BaseManager : NSObject

@end
