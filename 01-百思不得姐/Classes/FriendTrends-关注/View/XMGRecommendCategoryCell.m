//
//  XMGRecommendCategoryCell.m
//  01-百思不得姐
//
//  Created by xiaomage on 15/7/23.
//  Copyright (c) 2015年 小码哥. All rights reserved.
//

#import "XMGRecommendCategoryCell.h"
#import "XMGRecommendCategory.h"

@interface XMGRecommendCategoryCell()
/** 选中时显示的指示器控件 */
@property (weak, nonatomic) IBOutlet UIView *selectedIndicator;
@end

@implementation XMGRecommendCategoryCell

- (void)awakeFromNib {
    self.backgroundColor = XMGRGBColor(244, 244, 244);
    self.selectedIndicator.backgroundColor = XMGRGBColor(219, 21, 26);
    
    // 当cell的selection为None时, cell被选中时, 内部的子控件就不会进入高亮状态
//    self.textLabel.textColor = XMGRGBColor(78, 78, 78);
//    self.textLabel.highlightedTextColor = XMGRGBColor(219, 21, 26);
//    UIView *bg = [[UIView alloc] init];
//    bg.backgroundColor = [UIColor clearColor];
//    self.selectedBackgroundView = bg;
}

- (void)setCategory:(XMGRecommendCategory *)category
{
    _category = category;
    
    self.textLabel.text = category.name;
}

- (void)layoutSubviews
{
    [super layoutSubviews];
    
    // 重新调整内部textLabel的frame
    self.textLabel.y = 2;
    self.textLabel.height = self.contentView.height - 2 * self.textLabel.y;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];
    
    self.selectedIndicator.hidden = !selected;
    self.textLabel.textColor = selected ? self.selectedIndicator.backgroundColor : XMGRGBColor(78, 78, 78);
}
@end
