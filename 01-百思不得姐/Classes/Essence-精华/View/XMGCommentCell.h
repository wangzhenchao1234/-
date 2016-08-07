//
//  XMGCommentCell.h
//  01-百思不得姐
//
//  Created by wangzhenchao on 16/8/2.
//  Copyright (c) 2016年 XMG王振超. All rights reserved.
//

#import <UIKit/UIKit.h>
@class XMGComment;

@interface XMGCommentCell : UITableViewCell
/** 评论 */
@property (nonatomic, strong) XMGComment *comment;
@end
