//
//  XMGLoginRegisterViewController.m
//  01-百思不得姐
//
//  Created by xiaomage on 15/7/26.
//  Copyright (c) 2015年 小码哥. All rights reserved.
//

#import "XMGLoginRegisterViewController.h"

@interface XMGLoginRegisterViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *bgView;

@end

@implementation XMGLoginRegisterViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.view insertSubview:self.bgView atIndex:0];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/**
 * 让当前控制器对应的状态栏是白色
 */
- (UIStatusBarStyle)preferredStatusBarStyle
{
    return UIStatusBarStyleLightContent;
}
@end
