//
//  ViewController.m
//  A03.响应者链条
//
//  Created by apple on 15-1-4.
//  Copyright (c) 2015年 apple. All rights reserved.
//

#import "ViewController.h"
#import "CZRedViewController.h"

@interface ViewController ()
@property(nonatomic,strong)CZRedViewController *redVc;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    //控制器的view添加 另一个控制器的view
    CZRedViewController *redVc = [[CZRedViewController alloc] init];
    redVc.view.frame = CGRectMake(0, 39, 300, 300);
    [self.view addSubview:redVc.view];
    self.redVc = redVc;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    NSLog(@"%s",__func__);
}
@end
