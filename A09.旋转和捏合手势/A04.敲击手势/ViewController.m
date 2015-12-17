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
    
    /**
     * 默认情况下，控件只能 监听到一种 手势
     * 如果要监听到多个手势，设置一个代理的方法，告知它允许 ”多个手势“ 并存
     */
    // Do any additional setup after loading the view, typically from a nib.
    //给图片添加 "旋转手势"
    // 1.创建一个 "旋转手势" 对象
    UIRotationGestureRecognizer *rotationGest = [[UIRotationGestureRecognizer alloc] initWithTarget:self action:@selector(rotationView:)];
    
    // 属性
    //设置代理
    rotationGest.delegate = self;
    
    // 2.把手势添加到 view 上
    [self.imageView addGestureRecognizer:rotationGest];
    
    //给图片添加 "捏合手势"
    UIPinchGestureRecognizer *pinchGest = [[UIPinchGestureRecognizer alloc] initWithTarget:self action:@selector(pinchView:)];
    [self.imageView addGestureRecognizer:pinchGest];
    
    
}


-(void)rotationView:(UIRotationGestureRecognizer *)rotationGest{
    
    //旋转角度
    //旋转的角度也一个累加的过程
    NSLog(@"旋转角度 %f",rotationGest.rotation);
    
    // 设置图片的旋转
    self.imageView.transform = CGAffineTransformRotate(self.imageView.transform, rotationGest.rotation);
    
    // 清除 "旋转角度" 的累
    rotationGest.rotation = 0;
    
}


-(void)pinchView:(UIPinchGestureRecognizer *)pinchGest{
    //设置图片缩放
    
    self.imageView.transform = CGAffineTransformScale(self.imageView.transform, pinchGest.scale, pinchGest.scale);
    
    // 还源
    pinchGest.scale = 1;
}


#pragma mark 手势代理
//Simultaneous 同时发生
-(BOOL)gestureRecognizer:(UIGestureRecognizer *)gestureRecognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(UIGestureRecognizer *)otherGestureRecognizer{
    
    

    return YES;
    
}
@end
