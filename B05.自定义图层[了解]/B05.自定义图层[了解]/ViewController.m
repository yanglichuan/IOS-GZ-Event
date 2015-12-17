//
//  ViewController.m
//  B05.自定义图层[了解]
//
//  Created by apple on 15-1-4.
//  Copyright (c) 2015年 apple. All rights reserved.
//

#import "ViewController.h"
#import "CZLayer.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    //把自定义的图层 添加到 控制器view的图层上
    CZLayer *layer = [CZLayer layer];
    layer.backgroundColor = [UIColor redColor].CGColor;
    layer.bounds = CGRectMake(0, 0, 100, 100);
    
    
    // 如果自定义的图层，在drawInContext绘制的东西，如果要显示，必须手动调用一个方法，才能显示
    [layer setNeedsDisplay];
    
    //设置位置
    layer.anchorPoint = CGPointMake(0, 0);
    
    [self.view.layer addSublayer:layer];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
