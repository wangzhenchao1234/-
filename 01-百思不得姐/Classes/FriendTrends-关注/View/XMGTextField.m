//
//  XMGTextField.m
//  01-百思不得姐
//
//  Created by xiaomage on 15/7/26.
//  Copyright (c) 2015年 小码哥. All rights reserved.
//

#import "XMGTextField.h"

@implementation XMGTextField

- (void)drawPlaceholderInRect:(CGRect)rect
{
    [self.placeholder drawInRect:CGRectMake(0, 10, rect.size.width, 25) withAttributes:@{
                                                       NSForegroundColorAttributeName : [UIColor grayColor],
                                                       NSFontAttributeName : self.font}];
}

@end
