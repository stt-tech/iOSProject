//
//  NSArray+Log.m
//  iOSProject
//
//  Created by Alpha on 2017/7/29.
//  Copyright © 2017年 STT. All rights reserved.
//

#import "NSArray+Log.h"

@implementation NSArray (Log)

//-(NSString *)description
//{
//
//    return  [super description];
//}

/**
 注意在分类中重写这些方法可以log出具体的文字
 
 @param locale <#locale description#>
 @param level <#level description#>
 @return <#return value description#>
 */
-(NSString *)descriptionWithLocale:(id)locale indent:(NSUInteger)level
{
    NSMutableString * mutString = [NSMutableString stringWithString:@"\n[\n"];
    [self enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        [mutString appendFormat:@"==\t%@\n",obj];
    }];
    [mutString stringByAppendingString:@"]\n"];
    return  mutString.copy;
}

@end
