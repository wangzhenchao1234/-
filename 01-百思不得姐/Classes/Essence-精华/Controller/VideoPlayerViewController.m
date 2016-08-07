//
//  VideoPlayerViewController.m
//  01-百思不得姐
//
//  Created by 王振超 on 16/8/1.
//  Copyright © 2016年 小码哥. All rights reserved.
//

#import "VideoPlayerViewController.h"
#import "WMPlayer.h"
@interface VideoPlayerViewController ()<WMPlayerDelegate>
@property(nonatomic,strong)WMPlayer *wmPlayer;
@end

@implementation VideoPlayerViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _wmPlayer = [[WMPlayer alloc] initWithFrame:CGRectMake(0, 100, [UIScreen mainScreen].bounds.size.width, 400)];
    
    //    _wmPlayer.player = [[AVPlayer alloc] initWithURL:[NSURL URLWithString:@"http://vf1.mtime.cn/Video/2012/04/23/mp4/120423212602431929.mp4"]];
    
    _wmPlayer.delegate = self;
    
    _wmPlayer.closeBtnStyle = CloseBtnStyleClose;
    
    _wmPlayer.titleLabel.text = @"AVPlayer";
    
    _wmPlayer.URLString =self.topic.videouri;
    
    [self.view addSubview:_wmPlayer];
    
    [_wmPlayer play];
    

}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [_wmPlayer pause];

    [self dismissViewControllerAnimated:YES completion:nil];

}

-(void)wmplayer:(WMPlayer *)wmplayer clickedFullScreenButton:(UIButton *)fullScreenBtn{
    
    if (fullScreenBtn.selected==YES) {
        _wmPlayer.frame = self.view.bounds;
 
    }else{
    
        _wmPlayer.frame =CGRectMake(0, 100, [UIScreen mainScreen].bounds.size.width, 400);
    }

}
//播放完毕的代理方法
-(void)wmplayerFinishedPlay:(WMPlayer *)wmplayer{
    [self dismissViewControllerAnimated:YES completion:nil];

}
@end
