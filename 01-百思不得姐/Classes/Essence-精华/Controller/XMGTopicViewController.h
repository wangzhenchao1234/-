//
//  XMGTopicViewController.h
//  01-百思不得姐
//
//  Created by wangzhenchao on 16/7/27.
//  Copyright (c) 2016年 XMG王振超. All rights reserved.
//  最基本的帖子控制器

#import <UIKit/UIKit.h>

@interface XMGTopicViewController : UITableViewController
/** 帖子类型(交给子类去实现) */
@property (nonatomic, assign) XMGTopicType type;
@end
