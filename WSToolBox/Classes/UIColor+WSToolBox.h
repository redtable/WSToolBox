//
//  UIColor+WSToolBox.h
//  ttttttt
//
//  Created by WangSen on 2019/8/15.
//  Copyright © 2019 sen wang. All rights reserved.
//

#import <UIKit/UIKit.h>

#define RGBColor(r,g,b) [UIColor colorWithRGBRed:r green:g blue:b alpha:1]

#define RGBAColor(r,g,b,a) [UIColor colorWithRGBRed:r green:g blue:b alpha:a]

#define HexColor(hexColor) [UIColor colorWithHexString:hexColor alpha:-1]

#define HexAColor(hexColor, a) [UIColor colorWithHexString:hexColor alpha:a]


NS_ASSUME_NONNULL_BEGIN

@interface UIColor (WSToolBox)

+ (UIColor *)colorWithRGBRed:(NSInteger)red green:(NSInteger)green blue:(NSInteger)blue alpha:(CGFloat)alpha;

+ (UIColor *)colorWithHexString:(NSString *)hexStr alpha:(CGFloat)alpha;

@end

NS_ASSUME_NONNULL_END
