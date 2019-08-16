//
//  JsonDataTool.m
//  ttttttt
//
//  Created by WangSen on 2019/8/15.
//  Copyright © 2019 sen wang. All rights reserved.
//

#import "JsonDataTool.h"

@implementation JsonDataTool

#pragma mark - Check
+ (BOOL)stringAvailable:(id)obj {
    
    if (obj && [obj isKindOfClass:[NSString class]] && ((NSString *)obj).length) {
        return YES;
    }
    return NO;
}

+ (BOOL)arrayAvailable:(id)obj {
    
    if (obj && [obj isKindOfClass:[NSArray class]] && ((NSArray *)obj).count) {
        return YES;
    }
    return NO;
}

+ (BOOL)dictionaryAvailable:(id)obj {
    
    if (obj && [obj isKindOfClass:[NSDictionary class]] && ((NSDictionary *)obj).count) {
        return YES;
    }
    return NO;
}

#pragma mark -
+ (NSMutableDictionary *)getDictionaryInDictionary:(NSDictionary *)dic forKey:(NSString *)key {
    
    if (Dictionary(dic) && [dic objectForKey:key] && [[dic objectForKey:key] isKindOfClass:[NSDictionary class]]) {
        return [NSMutableDictionary dictionaryWithDictionary:[dic objectForKey:key]];
    }
    return [NSMutableDictionary new];
}

+ (BOOL)getBoolInDictionary:(NSDictionary *)dic forKey:(NSString *)key {
    
    if (Dictionary(dic) && [dic objectForKey:key] && [[dic objectForKey:key] isKindOfClass:[NSNumber class]]) {
        return [[dic objectForKey:key] boolValue];
    }
    return NO;
}

+ (NSMutableArray *)getArrayInDictionary:(NSDictionary *)dic forKey:(NSString *)key {
    
    if (Dictionary(dic) && [dic objectForKey:key] && [[dic objectForKey:key] isKindOfClass:[NSArray class]]) {
        return [NSMutableArray arrayWithArray:[dic objectForKey:key]];
    }
    return [NSMutableArray arrayWithCapacity:1];
}

+ (NSInteger)getIntegerInDictionary:(NSDictionary *)dic forKey:(NSString *)key {
    
    if (Dictionary(dic) && [dic objectForKey:key] && [[dic objectForKey:key] isKindOfClass:[NSNumber class]]) {
        return [[dic objectForKey:key]integerValue];
    }
    return 0;
}

+ (CGFloat)getFloatInDictionary:(NSDictionary *)dic forKey:(NSString *)key {
    
    if (Dictionary(dic) && [dic objectForKey:key] && [[dic objectForKey:key] isKindOfClass:[NSNumber class]]) {
        return [[dic objectForKey:key]floatValue];
    }
    return 0;
}

+ (NSString *)getStringInDictionary:(NSDictionary *)dic forKey:(NSString *)key {
    
    if (Dictionary(dic) && [dic objectForKey:key] && [[dic objectForKey:key] isKindOfClass:[NSString class]]) {
        return [dic objectForKey:key];
    }
    return [NSString stringWithFormat:@""];
}

@end
