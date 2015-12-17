//
//  ViewController.m
//  B06.图层的隐式动画
//
//  Created by apple on 15-1-4.
//  Copyright (c) 2015年 apple. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (weak, nonatomic) CALayer *layer;//非根层

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    /*
     weak 与 strong 使用
     只要这个对象被强引用一次，就无须再次强引用
     */
    
    //[self.view addSubview:imageView] self.view.subviews

    //创建一个 非根层
    CALayer *layer = [CALayer layer];
    //设置内容
    layer.contents = (id)[UIImage imageNamed:@"papa"].CGImage;
    //设置大小
    layer.bounds = CGRectMake(0, 0, 100, 100);
    
    //设置位置
    layer.position = CGPointMake(150, 250);
    
    //设置锚点
    layer.anchorPoint = CGPointMake(0.5, 0.5);
    
    [self.view.layer addSublayer:layer];

    self.layer = layer;
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    //隐藏动画
    
    //self.imageView.layer 它是根层
#warning 根层改变属性是没有动画，只有非根层改变属性就有默认的动画
    //设置根层的大小
    self.imageView.layer.bounds = CGRectMake(0, 0, 150, 150);
    
    //设置非根层的大小
    //想默认动画时间设置长一点
    
    [CATransaction begin];
    //[CATransaction setDisableActions:YES];//关闭隐藏动画
    [CATransaction setAnimationDuration:5];
    
    //看到transform旋转的动画效果
    //self.layer.bounds = CGRectMake(0, 0, 150, 150);
    self.layer.transform = CATransform3DMakeRotation(M_PI_4, 1, 1, 1);
    
    [CATransaction commit];

    
    
}

@end
