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
    //给图片添加 "捏合手势"
    // 1.创建一个 "捏合手势" 对象
    UIPinchGestureRecognizer *pinchGest = [[UIPinchGestureRecognizer alloc] initWithTarget:self action:@selector(pinView:)];

    
    // 属性
    
    // 2.把手势添加到 view 上
    [self.imageView addGestureRecognizer:pinchGest];
    
}

- (void)pinView:(UIPinchGestureRecognizer *)pinGest{

    // 缩放的比例是一个 "累加" 的过程
    NSLog(@"%s 缩放的比例 %f",__func__, pinGest.scale);
    
    // 设置图片的缩放
    
    // 10x10 / 1.0
    // 10*2.01 x 10*2.01     /1.01 + 1.0 = 2.01
    // 10*2.01 * 3.03  x  10*2.01*3.03      / 1.03 + 2.01 = 3.03
    
    
#warning 放大图片后， 再次缩放的时候，马上回到原先的大小
    //self.imageView.transform = CGAffineTransformMakeScale(pinGest.scale, pinGest.scale);
    
    
    self.imageView.transform = CGAffineTransformScale(self.imageView.transform, pinGest.scale, pinGest.scale);
    
    // 让比例还原，不要累加
    // 解决办法，重新设置scale
    pinGest.scale = 1;
    
   
}

@end
