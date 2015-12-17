//
//  CZView.m
//  B05.自定义图层[了解]
//
//  Created by apple on 15-1-4.
//  Copyright (c) 2015年 apple. All rights reserved.
//

#import "CZView.h"

@implementation CZView

-(void)drawRect:(CGRect)rect{

    
    //绘制自己想要的东西
    //UIView在drawRect画的东西，最后画在自己的个layer属性,然后把layer拷贝到屏幕上显示
    
    //UIView在显示的时候，会自己调用drawRect方法，然后调用图层的drawInContext

}

@end
