//
//  NEJsonDataTool.h
//  Student_iPad
//
//  Created by WangSen on 2019/7/1.
//  Copyright © 2019 liang. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

#define String(obj)                            [NEJsonDataTool stringAvailable:obj]
#define Array(obj)                             [NEJsonDataTool arrayAvailable:obj]
#define Dictionary(obj)                        [NEJsonDataTool dictionaryAvailable:obj]

#define DictionaryFromDictionary(d,k)          [NEJsonDataTool getDictionaryInDictionary:d forKey:k]
#define ArrayFromDictionary(d,k)               [NEJsonDataTool getArrayInDictionary:d forKey:k]
#define IntegerFromDictionary(d,k)             [NEJsonDataTool getIntegerInDictionary:d forKey:k]
#define FloatFromDictionary(d,k)               [NEJsonDataTool getFloatInDictionary:d forKey:k]
#define StringFromDictionary(d,k)              [NEJsonDataTool getStringInDictionary:d forKey:k]
#define BoolFromDictionary(d,k)                [NEJsonDataTool getBoolInDictionary:d forKey:k]



@interface NEJsonDataTool : NSObject

+ (BOOL)stringAvailable:(id)obj;

+ (BOOL)arrayAvailable:(id)obj;

+ (BOOL)dictionaryAvailable:(id)obj;

+ (NSMutableDictionary *)getDictionaryInDictionary:(NSDictionary *)dic forKey:(NSString *)key;

+ (BOOL)getBoolInDictionary:(NSDictionary *)dic forKey:(NSString *)key;

+ (NSMutableArray *)getArrayInDictionary:(NSDictionary *)dic forKey:(NSString *)key;

+ (NSInteger)getIntegerInDictionary:(NSDictionary *)dic forKey:(NSString *)key;

+ (CGFloat)getFloatInDictionary:(NSDictionary *)dic forKey:(NSString *)key;

+ (NSString *)getStringInDictionary:(NSDictionary *)dic forKey:(NSString *)key;

@end

NS_ASSUME_NONNULL_END
