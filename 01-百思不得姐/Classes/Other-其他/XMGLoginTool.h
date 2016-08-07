//
//  XMGLoginTool.h
//  01-百思不得姐
//
//  Created by wangzhenchao on 16/8/6.
//  Copyright (c) 2016年 XMG王振超. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface XMGLoginTool : NSObject
+ (void)setUid:(NSString *)uid;

/** 
 获得当前登录用户的uid，检测是否登录
 NSString *：已经登录, nil：没有登录 
 */
+ (NSString *)getUid;
+ (NSString *)getUid:(BOOL)showLoginController;
@end
