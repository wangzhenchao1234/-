//
//  XMGTopicCell.h
//  01-百思不得姐
//
//  Created by wangzhenchao on 16/7/27.
//  Copyright (c) 2016年 XMG王振超. All rights reserved.
//

#import <UIKit/UIKit.h>
@class XMGTopic;
@interface XMGTopicCell : UITableViewCell
/** 帖子数据 */
@property (nonatomic, strong) XMGTopic *topic;
@end
