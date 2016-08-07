//
//  XMGRecommendTagCell.m
//  01-百思不得姐
//
//  Created by wangzhenchao on 16/7/23.
//  Copyright (c) 2016年 XMG王振超. All rights reserved.
//

#import "XMGRecommendTagCell.h"
#import "XMGRecommendTag.h"
#import <UIImageView+WebCache.h>

@interface XMGRecommendTagCell()
@property (weak, nonatomic) IBOutlet UIImageView *imageListImageView;
@property (weak, nonatomic) IBOutlet UILabel *themeNameLabel;
@property (weak, nonatomic) IBOutlet UILabel *subNumberLabel;
@end

@implementation XMGRecommendTagCell

- (void)awakeFromNib {
    // Initialization code
}

- (void)setRecommendTag:(XMGRecommendTag *)recommendTag
{
    _recommendTag = recommendTag;
    
    [self.imageListImageView setHeader:recommendTag.image_list];
    
    self.themeNameLabel.text = recommendTag.theme_name;
    NSString *subNumber = nil;
    if (recommendTag.sub_number < 10000) {
        subNumber = [NSString stringWithFormat:@"%zd人订阅", recommendTag.sub_number];
    } else { // 大于等于10000
        subNumber = [NSString stringWithFormat:@"%.1f万人订阅", recommendTag.sub_number / 10000.0];
    }
    self.subNumberLabel.text = subNumber;
}

- (void)setFrame:(CGRect)frame
{
    frame.size.height -= 1;
    
    [super setFrame:frame];
}
@end
