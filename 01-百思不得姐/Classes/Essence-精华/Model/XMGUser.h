//
//  XMGUser.h
//  01-百思不得姐
//
//  Created by wangzhenchao on 16/8/2.
//  Copyright (c) 2016年 XMG王振超. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface XMGUser : NSObject
/** 用户名 */
@property (nonatomic, copy) NSString *username;
/** 性别 */
@property (nonatomic, copy) NSString *sex;
/** 头像 */
@property (nonatomic, copy) NSString *profile_image;
@end
