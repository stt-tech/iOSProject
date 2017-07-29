//
//  NSDictionary+Log.m
//  iOSProject
//
//  Created by Alpha on 2017/7/29.
//  Copyright © 2017年 STT. All rights reserved.
//

#import "NSDictionary+Log.h"

@implementation NSDictionary (Log)


//-(NSString *)description
//{
//
//    return  [super description];
//}


-(NSString *)descriptionWithLocale:(id)locale indent:(NSUInteger)level
{
    NSMutableString * mutString = [NSMutableString stringWithString:@"\n{\n"];
    [self enumerateKeysAndObjectsUsingBlock:^(id  _Nonnull key, id  _Nonnull obj, BOOL * _Nonnull stop) {
        [mutString appendFormat:@"\t%@ = %@\n",key,obj];
    }];
    [mutString stringByAppendingString:@"\n}\n"];
    return  mutString.copy;
}


@end
