//
//  XMGRecommendCategoryCell.h
//  01-百思不得姐
//
//  Created by wangzhenchao on 16/7/23.
//  Copyright (c) 2016年 XMG王振超. All rights reserved.
//

#import <UIKit/UIKit.h>
@class XMGRecommendCategory;

@interface XMGRecommendCategoryCell : UITableViewCell
/** 类别模型 */
@property (nonatomic, strong) XMGRecommendCategory *category;
@end
