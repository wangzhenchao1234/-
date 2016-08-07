//
//  XMGCommentHeaderView.h
//  01-百思不得姐
//
//  Created by wangzhenchao on 16/8/2.
//  Copyright (c) 2016年 XMG王振超. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface XMGCommentHeaderView : UITableViewHeaderFooterView
/** 文字数据 */
@property (nonatomic, copy) NSString *title;

+ (instancetype)headerViewWithTableView:(UITableView *)tableView;
@end
