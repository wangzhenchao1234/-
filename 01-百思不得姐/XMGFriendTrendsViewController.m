//
//  XMGFriendTrendsViewController.m
//  01-百思不得姐
//
//  Created by xiaomage on 15/7/22.
//  Copyright (c) 2015年 小码哥. All rights reserved.
//

#import "XMGFriendTrendsViewController.h"

@implementation XMGFriendTrendsViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    
    // 设置导航栏标题
    self.navigationItem.title = @"我的关注";
//    self.title = @"我的关注";
//    self.navigationItem.title = @"我的关注";
//    self.tabBarItem.title = @"我的关注";
    
    // 设置导航栏左边的按钮
    UIButton *friendsButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [friendsButton setBackgroundImage:[UIImage imageNamed:@"friendsRecommentIcon"] forState:UIControlStateNormal];
    [friendsButton setBackgroundImage:[UIImage imageNamed:@"friendsRecommentIcon-click"] forState:UIControlStateHighlighted];
    friendsButton.size = friendsButton.currentBackgroundImage.size;
    [friendsButton addTarget:self action:@selector(friendsClick) forControlEvents:UIControlEventTouchUpInside];
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:friendsButton];
}

- (void)friendsClick
{
    XMGLogFunc;
}

@end
