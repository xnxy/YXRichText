//
//  NSString+RichText.h
//  RichText
//
//  Created by dev on 2018/7/6.
//  Copyright © 2018年 dev. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (RichText)

// 创建富文本并配置富文本(NSArray中的数据必须是ConfigAttributedString对象合集)
- (NSMutableAttributedString *)createAttributedStringAndConfig:(NSArray *)configs;

// 用于搜寻一段字符串在另外一段字符串中的NSRange值
- (NSRange)rangeFrom:(NSString *)string;

// 本字符串的range
- (NSRange)range;

@end
