//
//  XMGAddTagViewController.m
//  01-百思不得姐
//
//  Created by xiaomage on 15/8/5.
//  Copyright (c) 2015年 小码哥. All rights reserved.
//

#import "XMGAddTagViewController.h"
#import "XMGTagButton.h"

@interface XMGAddTagViewController ()
/** 内容 */
@property (nonatomic, weak) UIView *contentView;
/** 文本输入框 */
@property (nonatomic, weak) UITextField *textField;
/** 添加按钮 */
@property (nonatomic, weak) UIButton *addButton;
/** 所有的标签按钮 */
@property (nonatomic, strong) NSMutableArray *tagButtons;
@end

@implementation XMGAddTagViewController

- (NSMutableArray *)tagButtons
{
    if (!_tagButtons) {
        _tagButtons = [NSMutableArray array];
    }
    return _tagButtons;
}

- (UIButton *)addButton
{
    if (!_addButton) {
        UIButton *addButton = [UIButton buttonWithType:UIButtonTypeCustom];
        addButton.width = self.contentView.width;
        addButton.height = 35;
        [addButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [addButton addTarget:self action:@selector(addButtonClick) forControlEvents:UIControlEventTouchUpInside];
        addButton.titleLabel.font = [UIFont systemFontOfSize:14];
        addButton.contentEdgeInsets = UIEdgeInsetsMake(0, XMGTagMargin, 0, XMGTagMargin);
        // 让按钮内部的文字和图片都左对齐
        addButton.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
        addButton.backgroundColor = XMGTagBg;
        [self.contentView addSubview:addButton];
        _addButton = addButton;
    }
    return _addButton;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setupNav];
    
    [self setupContentView];
    
    [self setupTextFiled];
}

- (void)setupContentView
{
    UIView *contentView = [[UIView alloc] init];
    contentView.x = XMGTagMargin;
    contentView.width = self.view.width - 2 * contentView.x;
    contentView.y = 64 + XMGTagMargin;
    contentView.height = XMGScreenH;
    [self.view addSubview:contentView];
    self.contentView = contentView;
}

- (void)setupTextFiled
{
    UITextField *textField = [[UITextField alloc] init];
    textField.width = XMGScreenW;
    textField.height = 25;
    textField.placeholder = @"多个标签用逗号或者换行隔开";
    // 设置了占位文字内容以后, 才能设置占位文字的颜色
    [textField setValue:[UIColor grayColor] forKeyPath:@"_placeholderLabel.textColor"];
    [textField addTarget:self action:@selector(textDidChange) forControlEvents:UIControlEventEditingChanged];
    [textField becomeFirstResponder];
    [self.contentView addSubview:textField];
    self.textField = textField;
}

- (void)setupNav
{
    self.view.backgroundColor = [UIColor whiteColor];
    self.title = @"添加标签";
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"完成" style:UIBarButtonItemStyleDone target:self action:@selector(done)];
}

- (void)done
{
    
}

/**
 * 监听文字改变
 */
- (void)textDidChange
{
    if (self.textField.hasText) { // 有文字
        // 显示"添加标签"的按钮
        self.addButton.hidden = NO;
        self.addButton.y = CGRectGetMaxY(self.textField.frame) + XMGTagMargin;
        [self.addButton setTitle:[NSString stringWithFormat:@"添加标签: %@", self.textField.text] forState:UIControlStateNormal];
    } else { // 没有文字
        // 隐藏"添加标签"的按钮
        self.addButton.hidden = YES;
    }
    
    // 更新标签和文本框的frame
    [self updateTagButtonFrame];
}

/**
 * 监听"添加标签"按钮点击
 */
- (void)addButtonClick
{
    // 添加一个"标签按钮"
    XMGTagButton *tagButton = [XMGTagButton buttonWithType:UIButtonTypeCustom];
    [tagButton addTarget:self action:@selector(tagButtonClick:) forControlEvents:UIControlEventTouchUpInside];
    [tagButton setTitle:self.textField.text forState:UIControlStateNormal];
    tagButton.height = self.textField.height;
    [self.contentView addSubview:tagButton];
    [self.tagButtons addObject:tagButton];
    
    // 更新标签按钮的frame
    [self updateTagButtonFrame];
    
    // 清空textField文字
    self.textField.text = nil;
    self.addButton.hidden = YES;
}

/**
 * 专门用来更新标签按钮的frame
 */
- (void)updateTagButtonFrame
{
    // 更新标签按钮的frame
    for (int i = 0; i<self.tagButtons.count; i++) {
        XMGTagButton *tagButton = self.tagButtons[i];
        
        if (i == 0) { // 最前面的标签按钮
            tagButton.x = 0;
            tagButton.y = 0;
        } else { // 其他标签按钮
            XMGTagButton *lastTagButton = self.tagButtons[i - 1];
            // 计算当前行左边的宽度
            CGFloat leftWidth = CGRectGetMaxX(lastTagButton.frame) + XMGTagMargin;
            // 计算当前行右边的宽度
            CGFloat rightWidth = self.contentView.width - leftWidth;
            if (rightWidth >= tagButton.width) { // 按钮显示在当前行
                tagButton.y = lastTagButton.y;
                tagButton.x = leftWidth;
            } else { // 按钮显示在下一行
                tagButton.x = 0;
                tagButton.y = CGRectGetMaxY(lastTagButton.frame) + XMGTagMargin;
            }
        }
    }
    
    // 最后一个标签按钮
    XMGTagButton *lastTagButton = [self.tagButtons lastObject];
    CGFloat leftWidth = CGRectGetMaxX(lastTagButton.frame) + XMGTagMargin;
    
    // 更新textField的frame
    if (self.contentView.width - leftWidth >= [self textFieldTextWidth]) {
        self.textField.y = lastTagButton.y;
        self.textField.x = leftWidth;
    } else {
        self.textField.x = 0;
        self.textField.y = CGRectGetMaxY(lastTagButton.frame) + XMGTagMargin;
    }
}

/**
 * 标签按钮的点击
 */
- (void)tagButtonClick:(XMGTagButton *)tagButton
{
    [tagButton removeFromSuperview];
    [self.tagButtons removeObject:tagButton];
    
    // 重新更新所有标签按钮的frame
    [UIView animateWithDuration:0.25 animations:^{
        [self updateTagButtonFrame];
    }];
}

/**
 * textField的文字宽度
 */
- (CGFloat)textFieldTextWidth
{
    CGFloat textW = [self.textField.text sizeWithAttributes:@{NSFontAttributeName : self.textField.font}].width;
    return MAX(100, textW);
}

@end
