//
//  NSArray+WSToolBox.m
//  ttttttt
//
//  Created by WangSen on 2019/8/15.
//  Copyright © 2019 sen wang. All rights reserved.
//

#import "NSArray+WSToolBox.h"

@implementation NSArray (WSToolBox)


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

- (id)objectSafeAtIndex:(NSUInteger)index {
    if (index >= 0 && index < self.count) {
        return [self objectAtIndex:index];
    }
    return nil;
}

@end
