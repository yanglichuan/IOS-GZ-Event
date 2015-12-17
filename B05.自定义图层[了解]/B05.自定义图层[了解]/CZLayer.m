//
//  CZLayer.m
//  B05.自定义图层[了解]
//
//  Created by apple on 15-1-4.
//  Copyright (c) 2015年 apple. All rights reserved.
//

#import "CZLayer.h"

@implementation CZLayer

-(void)drawInContext:(CGContextRef)ctx{

    //上下文
    // 画一个半径为40的圆
    CGContextFillEllipseInRect(ctx, CGRectMake(0, 0, 80, 80));

//    CGContextFillPath(CGContextRef c)
//    CGContextStrokePath(CGContextStrokePath(<#CGContextRef c#>))
    
}

@end
