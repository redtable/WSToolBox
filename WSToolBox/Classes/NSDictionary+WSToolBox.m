//
//  NSDictionary+WSToolBox.m
//  ttttttt
//
//  Created by WangSen on 2019/8/15.
//  Copyright © 2019 sen wang. All rights reserved.
//

#import "NSDictionary+WSToolBox.h"
#import "JsonDataTool.h"

@implementation NSDictionary (WSToolBox)

- (NSString *)jsonString {
    if ([NSJSONSerialization isValidJSONObject:self]) {
        NSError * error;
        NSData * data = [NSJSONSerialization dataWithJSONObject:self options:0 error:&error];
        if (data && !error) {
            NSString * jsonString = [[NSString alloc]initWithData:data encoding:NSUTF8StringEncoding];
            return jsonString;
        }
    }
    return nil;
}

@end

@implementation NSMutableDictionary (WSToolBox)

- (void)setString:(NSString *)string forKey:(id<NSCopying>)key {
    
    if (!key) {
        return;
    }
    
    if (String(string)) {
        [self setObject:string forKey:key];
    } else {
        [self setObject:@"" forKey:key];
    }
}

@end
