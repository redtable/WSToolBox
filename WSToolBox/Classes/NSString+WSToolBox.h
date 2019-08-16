//
//  NSString+WSToolBox.h
//  ttttttt
//
//  Created by WangSen on 2019/8/15.
//  Copyright © 2019 sen wang. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSString (WSToolBox)

- (NSString *)stringByTrim;

- (NSString *)md5String;

- (id)jsonValue;

@end

NS_ASSUME_NONNULL_END
