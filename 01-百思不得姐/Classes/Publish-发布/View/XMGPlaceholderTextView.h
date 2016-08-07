//
//  XMGPlaceholderTextView.h
//  01-百思不得姐
//
//  Created by wangzhenchao on 16/8/5.
//  Copyright (c) 2016年 XMG王振超. All rights reserved.
//  拥有占位文字功能的TextView

#import <UIKit/UIKit.h>

@interface XMGPlaceholderTextView : UITextView
/** 占位文字 */
@property (nonatomic, copy) NSString *placeholder;
/** 占位文字的颜色 */
@property (nonatomic, strong) UIColor *placeholderColor;
@end
