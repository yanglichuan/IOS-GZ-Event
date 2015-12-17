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
    //给图片添加 "轻扫手势"
    // 1.创建一个 "轻扫手势" 对象
    UISwipeGestureRecognizer *swipeGest = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(swipeView:)];

    
    // 属性
    //UISwipeGestureRecognizerDirectionRight 向右轻扫
    //UISwipeGestureRecognizerDirectionLeft    向左轻扫
    //UISwipeGestureRecognizerDirectionUp    向上
    //UISwipeGestureRecognizerDirectionDown 向下
    
    swipeGest.direction = UISwipeGestureRecognizerDirectionUp;
    
    // 2.把手势添加到 view 上
    [self.imageView addGestureRecognizer:swipeGest];
    
}

- (void)swipeView:(UISwipeGestureRecognizer *)swipeGest{
    // 怎么判断 "长按" 开始和结束
    NSLog(@"%s 手势状态 %ld",__func__, swipeGest.state);
   
}

@end
