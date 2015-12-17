//
//  ViewController.m
//  B04.position与anchorPoint
//
//  Created by apple on 15-1-4.
//  Copyright (c) 2015年 apple. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    //创建一个图层
    CALayer *layer = [CALayer layer];
    layer.backgroundColor = [UIColor redColor].CGColor;
    layer.bounds = CGRectMake(0, 0, 100, 100);
    
    // 设置位置
    layer.position = CGPointMake(100, 100);

    //图层的透明度
    layer.opacity = 0.5;

    
    // 设置锚点
    layer.anchorPoint = CGPointMake(0.5, 0.5);
    
    
    //然后添加到控制器的view的图层
    [self.view.layer addSublayer:layer];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
