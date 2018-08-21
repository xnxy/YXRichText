//
//  NSString+RichText.m
//  RichText
//
//  Created by dev on 2018/7/6.
//  Copyright © 2018年 dev. All rights reserved.
//

#import "NSString+RichText.h"
#import "ConfigAttributedString.h"

@implementation NSString (RichText)

- (NSMutableAttributedString *)createAttributedStringAndConfig:(NSArray *)configs
{
    NSMutableAttributedString *attributedString = \
    [[NSMutableAttributedString alloc] initWithString:self];
    
    [configs enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
        ConfigAttributedString *oneConfig = obj;
        [attributedString addAttribute:oneConfig.attribute
                                 value:oneConfig.value
                                 range:oneConfig.range];
    }];
    
    return attributedString;
}

- (NSRange)rangeFrom:(NSString *)string
{
    return [string rangeOfString:self];
}

- (NSRange)range
{
    return NSMakeRange(0, self.length);
}

@end
