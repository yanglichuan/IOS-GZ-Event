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

}


-(IBAction)panView:(UIPanGestureRecognizer *)panGest{
 // 方法
    
    
    //panGest.view触摸的view
    //拖拽的距离 [距离是一个累加]
    CGPoint trans = [panGest translationInView:panGest.view];
    NSLog(@"%@",NSStringFromCGPoint(trans));
    
    // 设置图片移动
    CGPoint center = self.imageView.center;
    center.x += trans.x;
    center.y += trans.y;
    self.imageView.center = center;
    
    //清除 累加 的距离
    [panGest setTranslation:CGPointZero inView:panGest.view];
}






@end
