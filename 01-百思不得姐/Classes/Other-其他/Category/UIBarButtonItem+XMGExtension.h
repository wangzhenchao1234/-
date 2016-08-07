//
//  UIBarButtonItem+XMGExtension.h
//  01-百思不得姐
//
//  Created by wangzhenchao on 16/7/22.
//  Copyright (c) 2016年 XMG王振超. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIBarButtonItem (XMGExtension)
+ (instancetype)itemWithImage:(NSString *)image highImage:(NSString *)highImage target:(id)target action:(SEL)action;
@end
