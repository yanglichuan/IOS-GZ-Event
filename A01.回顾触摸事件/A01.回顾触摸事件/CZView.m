//
//  CZView.m
//  A01.回顾触摸事件
//
//  Created by apple on 15-1-4.
//  Copyright (c) 2015年 apple. All rights reserved.
//

#import "CZView.h"

@implementation CZView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/
-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{

    //获取一个touche对象
    UITouch *touch = [touches anyObject];
    
    // 获取当前触摸点
    CGPoint location = [touch locationInView:touch.view];
    
    
//    UIEventTypeTouches, 触摸事件
//    UIEventTypeMotion, 加速计事件
//    UIEventTypeRemoteControl, 远程控制事件
     NSLog(@"%ld",event.type);
    
    
    //学一简单的音乐播放器
//    UIEventSubtypeRemoteControlPlay                 = 100,//播放
//    UIEventSubtypeRemoteControlPause                = 101,//暂停
//    UIEventSubtypeRemoteControlStop                 = 102,//停止
//    UIEventSubtypeRemoteControlNextTrack            = 104,//下一首
//    UIEventSubtypeRemoteControlPreviousTrack        = 105,//上一首
    //一般远程事件才有subtype
    UIEventSubtype subtype = event.subtype;
    
    
    


}

-(void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event{
    //获取移动前那个 触摸点
    //获取一个touche对象
    UITouch *touch = [touches anyObject];
    
    CGPoint previousLocitation = [touch previousLocationInView:touch.view];
    
    
}
@end
