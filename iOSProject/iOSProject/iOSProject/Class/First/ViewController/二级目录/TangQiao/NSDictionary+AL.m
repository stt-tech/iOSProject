//
//  NSDictionary+AL.m
//  iOSProject
//
//  Created by Alpha on 2017/8/3.
//  Copyright © 2017年 STT. All rights reserved.
//

#import "NSDictionary+AL.h"

@implementation NSDictionary (AL)

+ (void)load {
    Method fromMethod = class_getInstanceMethod(objc_getClass("__NSPlaceholderDictionary"), @selector(initWithObjects:forKeys:count:));
    Method toMethod = class_getInstanceMethod(objc_getClass("__NSPlaceholderDictionary"), @selector(st_initWithObjects:forKeys:count:));
    method_exchangeImplementations(fromMethod, toMethod);
}

-(instancetype)st_initWithObjects:(id *)objects forKeys:(id<NSCopying> *)keys count:(NSUInteger)count {
    NSUInteger rightCount = 0;
    for (NSUInteger i = 0; i < count; i++) {
        // 这里只做value 为nil的处理 对key为nil不做处理
        if (objects[i] == nil) {
            objects[i] = [NSNull null]; // 建议使用这种方法
//            objects[i]= @"";
        }else{
            
        }
        rightCount++;
    }
    
    return  [self st_initWithObjects:objects forKeys:keys count:rightCount];
}



@end
