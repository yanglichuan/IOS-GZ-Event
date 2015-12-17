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
    // Do any additional setup after loading the view, typically from a nib.
    
    //获取圆角图片
    UIImage *image = [UIImage cornerImageWithImageName:@"papa" cornerRadius:10 borderWidth:2 borderColor:[UIColor redColor]];
    
    // 学习CALayer的属性
    
    //autoLayout影响的尺寸设置
    // 设置阴影颜色
    self.redView.layer.shadowColor = [UIColor blackColor].CGColor;
    // 阴影的透明度
    self.redView.layer.shadowOpacity = 0.5;
    
    // 阴影的位置
   // self.redView.layer.shadowOffset = CGSizeMake(150, 150);
    self.redView.layer.shadowOffset = CGSizeMake(10, 10);
    
    // 设置内容 一般设置图片，并且的图片的数据类型为CGImageRef
    self.redView.layer.contents = (id)image.CGImage;
    
    /*
     *1.如果你设置了masksToBounds为YES,阴影是不出，原因，阴影也被切掉了
     *2.如果你想有圆角的效果，又想有阴影，图片本来就有圆角效果
     *3.获取话说：自己把图片转换成有圆角的图片，再显示
     */
    
}

-(void)test1{
    //autoLayout影响的尺寸设置
    // 设置尺寸
    self.redView.layer.bounds = CGRectMake(0, 0, 150, 150);
    
    // 设置边框的颜色
    self.redView.layer.borderColor =[UIColor blackColor].CGColor;
    // 设置边框的宽度
    self.redView.layer.borderWidth = 2;
    
    // 设置背景颜色
    self.redView.layer.backgroundColor = [UIColor greenColor].CGColor;
    
    // 设置圆角效果
    self.redView.layer.cornerRadius = 10;
    
    // 如果圆角周边的剪掉的话，设置一个属性
    self.redView.layer.masksToBounds = YES;
    
    // 设置阴影颜色
    self.redView.layer.shadowColor = [UIColor blackColor].CGColor;
    // 阴影的透明度
    self.redView.layer.shadowOpacity = 0.5;
    
    // 阴影的位置
    self.redView.layer.shadowOffset = CGSizeMake(150, 150);
    
    // 设置内容 一般设置图片，并且的图片的数据类型为CGImageRef
    self.redView.layer.contents = (id)[UIImage imageNamed:@"papa"].CGImage;
    
    /*
     *1.如果你设置了masksToBounds为YES,阴影是不出，原因，阴影也被切掉了
     *2.如果你想有圆角的效果，又想有阴影，图片本来就有圆角效果
     *3.获取话说：自己把图片转换成有圆角的图片，再显示
     */
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
