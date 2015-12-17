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
    //给图片添加 "旋转手势"
    // 1.创建一个 "旋转手势" 对象
    UIRotationGestureRecognizer *rotationGest = [[UIRotationGestureRecognizer alloc] initWithTarget:self action:@selector(rotationView:)];
    
    // 属性
    
    // 2.把手势添加到 view 上
    [self.imageView addGestureRecognizer:rotationGest];
    
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
@end
