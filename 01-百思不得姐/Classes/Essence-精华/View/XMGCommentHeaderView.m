//
//  XMGCommentHeaderView.m
//  01-百思不得姐
//
//  Created by wangzhenchao on 16/8/2.
//  Copyright (c) 2016年 XMG王振超. All rights reserved.
//

#import "XMGCommentHeaderView.h"

@interface XMGCommentHeaderView()
/** 文字标签 */
@property (nonatomic, weak) UILabel *label;
@end

@implementation XMGCommentHeaderView

+ (instancetype)headerViewWithTableView:(UITableView *)tableView
{
    static NSString *ID = @"header";
    XMGCommentHeaderView *header = [tableView dequeueReusableHeaderFooterViewWithIdentifier:ID];
    if (header == nil) { // 缓存池中没有, 自己创建
        header = [[XMGCommentHeaderView alloc] initWithReuseIdentifier:ID];
    }
    return header;
}

- (instancetype)initWithReuseIdentifier:(NSString *)reuseIdentifier
{
    if (self = [super initWithReuseIdentifier:reuseIdentifier]) {
        self.contentView.backgroundColor = XMGGlobalBg;
        
        // 创建label
        UILabel *label = [[UILabel alloc] init];
        label.textColor = XMGRGBColor(67, 67, 67);
        label.width = 200;
        label.autoresizingMask = UIViewAutoresizingFlexibleHeight;
        [self.contentView addSubview:label];
        self.label = label;
    }
    return self;
}

- (void)setTitle:(NSString *)title
{
    _title = [title copy];
    
    self.label.text = title;
}

@end
