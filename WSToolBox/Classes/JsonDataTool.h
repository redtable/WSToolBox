//
//  JsonDataTool.h
//  ttttttt
//
//  Created by WangSen on 2019/8/15.
//  Copyright © 2019 sen wang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreGraphics/CGBase.h>

#define String(obj)                            [JsonDataTool stringAvailable:obj]
#define Array(obj)                             [JsonDataTool arrayAvailable:obj]
#define Dictionary(obj)                        [JsonDataTool dictionaryAvailable:obj]

#define DictionaryFromDictionary(d,k)          [JsonDataTool getDictionaryInDictionary:d forKey:k]
#define ArrayFromDictionary(d,k)               [JsonDataTool getArrayInDictionary:d forKey:k]
#define IntegerFromDictionary(d,k)             [JsonDataTool getIntegerInDictionary:d forKey:k]
#define FloatFromDictionary(d,k)               [JsonDataTool getFloatInDictionary:d forKey:k]
#define StringFromDictionary(d,k)              [JsonDataTool getStringInDictionary:d forKey:k]
#define BoolFromDictionary(d,k)                [JsonDataTool getBoolInDictionary:d forKey:k]

NS_ASSUME_NONNULL_BEGIN

@interface JsonDataTool : NSObject

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
