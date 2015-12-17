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
    //给图片添加 "敲击手势"
    // 1.创建一个 "敲击手势" 对象
    UITapGestureRecognizer *tapGest = [[UITapGestureRecognizer alloc] init];
    
    // 2.设置"敲击手势" 对象的属性
    // 点击的次数
    tapGest.numberOfTapsRequired = 1;
    
    // 手指的数量
    //tapGest.numberOfTouchesRequired = 2;
    
    // 设置代理
    tapGest.delegate = self;
    
    // 3.把手势添加到 view 上
    [self.imageView addGestureRecognizer:tapGest];
    
    // 4.设置手势的监听方法
    [tapGest addTarget:self action:@selector(tapView:)];
}

- (void)tapView:(UITapGestureRecognizer *)tapGest{
    NSLog(@"%s",__func__);
}


#pragma mark 手势的代理
//告诉view能否接收 "触摸事件"
-(BOOL)gestureRecognizer:(UIGestureRecognizer *)gestureRecognizer shouldReceiveTouch:(UITouch *)touch{
    //左边可以 点击 /右边不可以点击
    CGPoint location = [touch locationInView:touch.view];
    if (location.x <= touch.view.bounds.size.width * 0.5) {
        return YES;
    }
    return NO;
}
@end
