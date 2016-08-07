//
//  XMGRecommendCategory.m
//  01-百思不得姐
//
//  Created by wangzhenchao on 16/7/23.
//  Copyright (c) 2016年 XMG王振超. All rights reserved.
//

#import "XMGRecommendCategory.h"
#import <MJExtension.h>

@implementation XMGRecommendCategory
+ (NSDictionary *)replacedKeyFromPropertyName
{
    return @{@"ID" : @"id"};
}

//+ (NSString *)replacedKeyFromPropertyName121:(NSString *)propertyName
//{
//    // propertyName == myName == myHeight
//    if ([propertyName isEqualToString:@"ID"]) return @"id";
//    
//    return propertyName;
//}

- (NSMutableArray *)users
{
    if (!_users) {
        _users = [NSMutableArray array];
    }
    return _users;
}
@end
