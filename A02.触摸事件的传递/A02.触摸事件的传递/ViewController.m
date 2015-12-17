//
//  ViewController.m
//  A02.触摸事件的传递
//
//  Created by apple on 15-1-4.
//  Copyright (c) 2015年 apple. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *imageView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //当父控件不能接收触摸事件的时候，它的子控件不在遍历
    //当触摸点不在父控件的事件，它的子控件也不在遍历
    
    //往图片添加一个按钮
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeContactAdd];
    [btn addTarget:self action:@selector(btnClick) forControlEvents:UIControlEventTouchUpInside];
    [self.imageView addSubview:btn];
}

-(void)btnClick{
    NSLog(@"%s",__func__);
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    NSLog(@"%s",__func__);
}
@end
