//
//  ViewController.m
//  YXRichTextDemo
//
//  Created by zhouwei on 2018/8/21.
//  Copyright © 2018年 zhouwei. All rights reserved.
//

#import "ViewController.h"
#import <YXRichText/YXRichText.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"YXRichText";
    self.edgesForExtendedLayout = UIRectEdgeNone;
    
    UITextView *textView = [UITextView new];
    textView.editable = NO;
    
    UILabel *label = [UILabel new];
    label.textAlignment = NSTextAlignmentCenter;
    label.numberOfLines = 0;
    [label sizeToFit];
    
    [self.view addSubview:textView];
    [self.view addSubview:label];
    textView.frame = CGRectMake(0, 0, self.view.bounds.size.width, self.view.bounds.size.height/2);
    label.frame = CGRectMake(0, [UIScreen mainScreen].bounds.size.height/2, self.view.bounds.size.width, 100);
    
    textView.attributedText = [self attributedTextViewString:[self string] changeStr:@"关于中国的互联网"];
    label.attributedText = [self attributedPrice:98.70];
    
}

- (NSMutableAttributedString *)attributedPrice:(CGFloat)price{
    NSString *priceStr = [NSString stringWithFormat:@"￥%.2f",price];
    NSString *changeStr = [NSString stringWithFormat:@"￥%.0f",floor(price)];
    NSRange totalRange = [priceStr range];
    NSRange changeRange = [changeStr rangeFrom:priceStr];
    return [priceStr createAttributedStringAndConfig:@[
                                                       [ConfigAttributedString font:[UIFont systemFontOfSize:15] range:totalRange],
                                                       [ConfigAttributedString font:[UIFont systemFontOfSize:24] range:changeRange],
                                                       [ConfigAttributedString foregroundColor:[UIColor redColor] range:totalRange]
                                                       ]];
}



- (NSMutableAttributedString *)attributedTextViewString:(NSString *)str changeStr:(NSString *)changeStr{
    NSRange totalRange = [str range];
    NSRange changeRange = [changeStr rangeFrom:str];
    NSMutableParagraphStyle *paragraphStyle = [[NSMutableParagraphStyle alloc] init];
    paragraphStyle.lineSpacing = 6; //行间距
    paragraphStyle.paragraphSpacing = 10; //段落间距
    paragraphStyle.firstLineHeadIndent = 10; //首行缩进
    paragraphStyle.headIndent = 10; //头缩进
    paragraphStyle.tailIndent = -10; //尾巴缩进
    
    return [str createAttributedStringAndConfig:@[
                                                  [ConfigAttributedString font:[UIFont systemFontOfSize:15] range:totalRange],
                                                  [ConfigAttributedString font:[UIFont boldSystemFontOfSize:18] range:changeRange],
                                                  [ConfigAttributedString foregroundColor:[UIColor grayColor] range:totalRange],
                                                  [ConfigAttributedString foregroundColor:[UIColor blackColor] range:changeRange],
                                                  [ConfigAttributedString paragraphStyle:paragraphStyle range:totalRange]
                                                  ]];
}

- (NSString *)string{
    return @"关于中国的互联网\n网络审查在各个国家都普遍存在着，它并不仅存在于中国。在全球的局势对中国都不利的当下，当局会过滤掉影响、危害到中国长远发展的信息，此时国家安全的意义更加重大。\n互联网上存在着大量终究不现实的、不客观的，甚至自相矛盾的抹黑当局政府言论，它们背后一般有西方政府或非政府组织资金支持。这些媒体包括但不限于一些港媒、境外网站。\n我们希望您能在遇到此类言论和见解时，不要不加思考地、情绪一度被煽动而不能克制地、盲目地相信这些片面或者歪曲事实的东西，而是要事实求是地思考，要摆脱情绪绑架的怪诞思维去理解。\n我们需要了解到，中国的发展总基调是“稳中求进”，中国社会的最核心问题就是稳定。失去稳定的中国将会是一盘散沙，面临分裂和肢解的危险。我们希望您了解当今中国发展的根本保证是什么，发展的过程中哪部分是主旋律，哪些是噪音；哪些是进取的，哪些是会开历史倒车的。我们需要维新，而不是革命。\n我们应该清醒和全面地认识问题，偏信西方媒体的言论、缺乏对国家的信任是不可取的。您的数据安全和隐私对您尤为重要。若这些信息不应当被西方掌握时，它对国家和民族的命运更为重要。出于此原因，当局可能会限制您的行为，我们不会也无法干预当局的任何政策和决定。\n所以，我们希望您在使用此服务时，不要盲目地攻击当局的做法。";
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
