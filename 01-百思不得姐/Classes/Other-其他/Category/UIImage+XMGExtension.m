//
//  UIImage+XMGExtension.m
//  01-百思不得姐
//
//  Created by wangzhenchao on 16/8/3.
//  Copyright (c) 2016年 XMG王振超. All rights reserved.
//

#import "UIImage+XMGExtension.h"

@implementation UIImage (XMGExtension)
- (UIImage *)circleImage
{
    // NO代表透明
    UIGraphicsBeginImageContextWithOptions(self.size, NO, 0.0);
    
    // 获得上下文
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    
    // 添加一个圆
    CGRect rect = CGRectMake(0, 0, self.size.width, self.size.height);
    CGContextAddEllipseInRect(ctx, rect);
    
    // 裁剪
    CGContextClip(ctx);
    
    // 将图片画上去
    [self drawInRect:rect];
    
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    
    UIGraphicsEndImageContext();
    
    return image;
}

+ (UIImage *)imageWithName:(NSString *)name
{
    NSString *dir = [[NSUserDefaults standardUserDefaults] stringForKey:@"SkinDirName"];
    NSString *path = [NSString stringWithFormat:@"Skins/%@/%@", dir, name];
    return [UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:path ofType:nil]];
}
@end
