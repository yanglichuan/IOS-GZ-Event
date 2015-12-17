//
//  ViewController.m
//  B02.图层的基本使用
//
//  Created by apple on 15-1-4.
//  Copyright (c) 2015年 apple. All rights reserved.
//

#import "ViewController.h"
#import "UIImage+CZ.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *imgView;
@property (weak, nonatomic) IBOutlet UIView *redView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.redView.layer.contents = (id)[UIImage imageNamed:@"papa"].CGImage;
}


-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    //学习形变属性
    //缩放
    //第三个参数sz 看不到效果
    self.redView.layer.transform = CATransform3DMakeScale(1.5, 1.5, 1);
    
    //旋转
    //1, 0, 0 x轴旋转
    //0, 1, 0 y轴旋转
    //0, 0, 1 z轴旋转
    //self.redView.layer.transform = CATransform3DMakeRotation(M_PI_4 , 0, 1, 0);
    
    
    //平移
    //self.redView.layer.transform = CATransform3DMakeTranslation(-10, 10, 0);
    
    //使用kvc的方法 改变 属性值
    //[self.redView.layer setValue:[NSValue valueWithCATransform3D:CATransform3DMakeScale(1.5, 1.5, 1)] forKey:@"transform"];
    
#warning transform里有更具体的形变属性
    //缩放
    //transform.scale.x 代表x方向上绽放
    //transform.scale.y 代表y方向上绽放
    //[self.redView.layer setValue:@1.5 forKeyPath:@"transform.scale.y"];
    
    //旋转
    //transform.rotation.z z轴旋转
    //transform.rotation.x x轴旋转
    //transform.rotation.y y轴旋转
    //[self.redView.layer setValue:@(M_PI_4) forKeyPath:@"transform.rotation.y"];
    
    //平移
    //transfrom.translation.x x方向移动
    //transfrom.translation.y y方向移动
    //[self.redView.layer setValue:@(-20) forKeyPath:@"transform.translation.y"];

    //不具体指定x还是y方向的移动
    //[self.redView.layer setValue:[NSValue valueWithCGPoint:CGPointMake(20, 20)] forKeyPath:@"transform.translation"];
    
    
#warning kvc设置不仅限于transform属性，只要layer有的属性，都设置
//    [self.redView.layer setValue:[NSValue valueWithCGRect:CGRectMake(0, 0, 200, 200)] forKey:@"bounds"];
//    
//    
    
    
    
}

@end
