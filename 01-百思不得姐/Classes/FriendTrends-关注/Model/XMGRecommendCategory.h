//
//  XMGRecommendCategory.h
//  01-百思不得姐
//
//  Created by wangzhenchao on 16/7/23.
//  Copyright (c) 2016年 XMG王振超. All rights reserved.
//  推荐关注 左边的数据模型

#import <Foundation/Foundation.h>

@interface XMGRecommendCategory : NSObject
/** id */
@property (nonatomic, assign) NSInteger ID;
/** <#注释#> */
@property (nonatomic, copy) NSString *desc;
/** 总数 */
@property (nonatomic, assign) NSInteger count;
/** 名字 */
@property (nonatomic, copy) NSString *name;

/** 这个类别对应的用户数据 */
@property (nonatomic, strong) NSMutableArray *users;
/** 总数 */
@property (nonatomic, assign) NSInteger total;
/** 当前页码 */
@property (nonatomic, assign) NSInteger currentPage;
@end
