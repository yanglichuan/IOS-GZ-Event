//
//  UIImage+CZ.m
//  B02.图层的基本使用
//
//  Created by apple on 15-1-4.
//  Copyright (c) 2015年 apple. All rights reserved.
//

#import "UIImage+CZ.h"

@implementation UIImage (CZ)

+(UIImage *)cornerImageWithImageName:(NSString *)imageName cornerRadius:(CGFloat)cornerRadius borderWidth:(CGFloat)borderWidth borderColor:(UIColor *)borderColor{

    UIImage *sourceImage = [UIImage imageNamed:imageName];
    //生成一张新图片
    //1.开上一个位图上下文
    UIGraphicsBeginImageContextWithOptions(sourceImage.size, NO, 0.0);
    
    //2.把图片画在 位图上下文
    //2.1图片要裁剪成有圆角
    CALayer *layer = [CALayer layer];//图层里有一张图片
    
#warning 图层的大小一定要设置
    //图层设置大小
    layer.bounds = CGRectMake(0, 0, sourceImage.size.width, sourceImage.size.height);
    
    //设置内容
    layer.contents = (id)sourceImage.CGImage;
    
    //设置圆角
    layer.cornerRadius = cornerRadius;
    //裁剪
    layer.masksToBounds = YES;
   
    //设置边框
    layer.borderWidth = borderWidth;
    
    //设置边框颜色
    layer.borderColor = borderColor.CGColor;
    
    
    [layer renderInContext:UIGraphicsGetCurrentContext()];
    
    //3.从位图上下文 获取新图片
    UIImage *newImg = UIGraphicsGetImageFromCurrentImageContext();
    
    //4.结束位图的编辑
    UIGraphicsEndImageContext();
    
    //5.返回新图片
    return newImg;
}

@end
