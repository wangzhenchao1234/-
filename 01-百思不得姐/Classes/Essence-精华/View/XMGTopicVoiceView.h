//
//  XMGTopicVoiceView.h
//  01-百思不得姐
//
//  Created by wangzhenchao on 16/7/30.
//  Copyright (c) 2016年 XMG王振超. All rights reserved.
//  声音帖子中间的内容

#import <UIKit/UIKit.h>
@class XMGTopic;


@interface XMGTopicVoiceView : UIView
/** 帖子数据 */
@property (nonatomic, strong) XMGTopic *topic;
@end
