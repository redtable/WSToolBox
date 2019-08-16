//
//  NSString+WSToolBox.m
//  ttttttt
//
//  Created by WangSen on 2019/8/15.
//  Copyright © 2019 sen wang. All rights reserved.
//

#import "NSString+WSToolBox.h"
#import "NSData+WSToolBox.h"

@implementation NSString (WSToolBox)

- (NSString *)stringByTrim {
    NSCharacterSet *set = [NSCharacterSet whitespaceAndNewlineCharacterSet];
    return [self stringByTrimmingCharactersInSet:set];
}

- (id)jsonValue {
    NSData * data = [self dataUsingEncoding:NSUTF8StringEncoding];
    if (data) {
        NSError * error;
        id obj = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingMutableContainers error:&error];
        if (obj && !error) {
            return obj;
        }
    }
    return nil;
}

- (NSString *)md5String {
    NSData * data = [self dataUsingEncoding:NSUTF8StringEncoding];
    return [data md5String];
}

@end
