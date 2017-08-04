//
//  NSObject+Safe.m
//  iOSProject
//
//  Created by Alpha on 2017/8/3.
//  Copyright © 2017年 STT. All rights reserved.
//

#import "NSObject+Safe.h"

@implementation NSObject (Safe)



@end

@implementation NSDictionary (Safe)


+ (void)load {
    Method fromMethod = class_getInstanceMethod(objc_getClass("__NSPlaceholderDictionary"), @selector(initWithObjects:forKeys:count:));
    Method toMethod = class_getInstanceMethod(objc_getClass("__NSPlaceholderDictionary"), @selector(al_initWithObjects:forKeys:count:));
    method_exchangeImplementations(fromMethod, toMethod);
}


-(instancetype)al_initWithObjects:(id *)objects forKeys:(id<NSCopying> *)keys count:(NSUInteger)count {
    NSUInteger rightCount = 0;
    for (NSUInteger i = 0; i < count; i++) {
        // 这里只做value 为nil的处理 对key为nil不做处理
        if (objects[i] == nil) {
            objects[i] = [NSNull null];
        //    objects[i]= @"";
        }
        rightCount++;
    }
    return  [self al_initWithObjects:objects forKeys:keys count:rightCount];
}

@end


@implementation NSMutableDictionary (Safe)

+ (void)load {
    
    Method fromMethod = class_getInstanceMethod(objc_getClass("__NSDictionaryM"), @selector(setObject:forKey:));
    Method toMethod = class_getInstanceMethod(objc_getClass("__NSDictionaryM"), @selector(al_setObject:forKey:));
    method_exchangeImplementations(fromMethod, toMethod);
}

- (void)al_setObject:(id)emObject forKey:(NSString *)key {
    if (emObject == nil) {
        
        @try {
            [self al_setObject:emObject forKey:key];
        }
        @catch (NSException *exception) {
            NSLog(@"---------- %s Crash Because Method %s  ----------\n", class_getName(self.class), __func__);
            NSLog(@"%@", [exception callStackSymbols]);
            emObject = [NSString stringWithFormat:@""];
    //        emObject = [NSNull null];
            [self al_setObject:emObject forKey:key];
        }
        @finally {}
    }else {
        [self al_setObject:emObject forKey:key];
    }
}

@end

@implementation NSArray (Safe)




@end



