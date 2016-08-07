//
//  XMGTagTextField.h
//  01-百思不得姐
//
//  Created by wangzhenchao on 16/8/5.
//  Copyright (c) 2016年 XMG王振超. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface XMGTagTextField : UITextField
/** 按了删除键后的回调 */
@property (nonatomic, copy) void (^deleteBlock)();
@end
