//
//  ViewController.m
//  A04.敲击手势
//
//  Created by apple on 15-1-4.
//  Copyright (c) 2015年 apple. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UIGestureRecognizerDelegate>
@property (weak, nonatomic) IBOutlet UIImageView *imageView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    //给图片添加 "长按手势"
    // 1.创建一个 "长按手势" 对象
    UILongPressGestureRecognizer *longGest = [[UILongPressGestureRecognizer alloc] init];

    
    // 属性
    // 长按的时候
    longGest.minimumPressDuration = 3;
    
    // 长按时，距离 "触摸点" 可移动的距离
    longGest.allowableMovement = 30;
    
    // 2.把手势添加到 view 上
    [self.imageView addGestureRecognizer:longGest];
    
    // 3.设置手势的监听方法
    [longGest addTarget:self action:@selector(longPressView:)];
}

- (void)longPressView:(UILongPressGestureRecognizer *)longPressGest{
    // 怎么判断 "长按" 开始和结束
    NSLog(@"%s 手势状态 %ld",__func__,    longPressGest.state);
    if (longPressGest.state == UIGestureRecognizerStateBegan) {
        NSLog(@"长按手势开始");
    }else{
        NSLog(@"长按手势结束");
    }
}

@end
