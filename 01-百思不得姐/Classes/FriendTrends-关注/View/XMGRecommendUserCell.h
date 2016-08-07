//
//  XMGRecommendUserCell.h
//  01-百思不得姐
//
//  Created by wangzhenchao on 16/7/23.
//  Copyright (c) 2016年 XMG王振超. All rights reserved.
//

#import <UIKit/UIKit.h>
@class XMGRecommendUser;

@interface XMGRecommendUserCell : UITableViewCell
/** 用户模型 */
@property (nonatomic, strong) XMGRecommendUser *user;
@end
