//
//  XMGTextField.m
//  01-百思不得姐
//
//  Created by wangzhenchao on 16/2/26.
//  Copyright (c) 2016年 XMG王振超. All rights reserved.
//

#import "XMGTextField.h"

static NSString * const XMGPlacerholderColorKeyPath = @"_placeholderLabel.textColor";

@implementation XMGTextField

- (void)awakeFromNib
{
    // 设置光标颜色和文字颜色一致
    self.tintColor = self.textColor;
    
    // 不成为第一响应者
    [self resignFirstResponder];
}

/**
 * 当前文本框聚焦时就会调用
 */
- (BOOL)becomeFirstResponder
{
    // 修改占位文字颜色
    [self setValue:self.textColor forKeyPath:XMGPlacerholderColorKeyPath];
    return [super becomeFirstResponder];
}

/**
 * 当前文本框失去焦点时就会调用
 */
- (BOOL)resignFirstResponder
{
    // 修改占位文字颜色
    [self setValue:[UIColor grayColor] forKeyPath:XMGPlacerholderColorKeyPath];
    return [super resignFirstResponder];
}

/**
 运行时(Runtime): 
 * 苹果官方一套C语言库
 * 能做很多底层操作(比如访问隐藏的一些成员变量\成员方法....)
 */

@end
