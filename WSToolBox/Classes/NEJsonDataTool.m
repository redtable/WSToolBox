//
//  NEJsonDataTool.m
//  Student_iPad
//
//  Created by WangSen on 2019/7/1.
//  Copyright © 2019 liang. All rights reserved.
//

#import "NEJsonDataTool.h"

@implementation NEJsonDataTool

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
    
    if (Dictionary(dic) && [[dic objectForKey:key] isKindOfClass:[NSDictionary class]] && ([dic objectForKey:key] != nil)) {
        return [NSMutableDictionary dictionaryWithDictionary:[dic objectForKey:key]];
    } else {
        return [NSMutableDictionary dictionaryWithCapacity:1];
    }
}

+ (BOOL)getBoolInDictionary:(NSDictionary *)dic forKey:(NSString *)key {
    
    if (Dictionary(dic) && [[dic objectForKey:key] isKindOfClass:[NSNumber class]] && ([dic objectForKey:key] != nil)) {
        return [[dic objectForKey:key] boolValue];
    } else {
        return NO;
    }
}

+ (NSMutableArray *)getArrayInDictionary:(NSDictionary *)dic forKey:(NSString *)key {
    
    if (Dictionary(dic) && [[dic objectForKey:key] isKindOfClass:[NSArray class]] && ([dic objectForKey:key] != nil)) {
        return [NSMutableArray arrayWithArray:[dic objectForKey:key]];
    } else {
        return [NSMutableArray arrayWithCapacity:1];
    }
}

+ (NSInteger)getIntegerInDictionary:(NSDictionary *)dic forKey:(NSString *)key {
    
    if (Dictionary(dic) && [[dic objectForKey:key] isKindOfClass:[NSNumber class]] && ([dic objectForKey:key] != nil)) {
        return [[dic objectForKey:key]integerValue];
    } else {
        return 0;
    }
}

+ (CGFloat)getFloatInDictionary:(NSDictionary *)dic forKey:(NSString *)key {
    
    if (Dictionary(dic) && [[dic objectForKey:key] isKindOfClass:[NSNumber class]] && ([dic objectForKey:key] != nil)) {
        return [[dic objectForKey:key]floatValue];
    } else {
        return 0;
    }
}

+ (NSString *)getStringInDictionary:(NSDictionary *)dic forKey:(NSString *)key {
    
    if (Dictionary(dic) && [[dic objectForKey:key] isKindOfClass:[NSString class]] && ([dic objectForKey:key] != nil)) {
        return [dic objectForKey:key];
    } else {
        return [NSString stringWithFormat:@""];
    }
}

@end
