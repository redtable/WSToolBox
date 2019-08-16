//
//  NSArray+WSToolBox.h
//  ttttttt
//
//  Created by WangSen on 2019/8/15.
//  Copyright © 2019 sen wang. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSArray (WSToolBox)

- (NSString *)jsonString;

- (id)objectSafeAtIndex:(NSUInteger)index;

@end

NS_ASSUME_NONNULL_END
