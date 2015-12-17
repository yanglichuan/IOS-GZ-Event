//
//  UIImage+CZ.h
//  B02.图层的基本使用
//
//  Created by apple on 15-1-4.
//  Copyright (c) 2015年 apple. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (CZ)

//把一图片，裁剪成圆角的效果，圆角大小、边框、边框颜色的新图片
+(UIImage *)cornerImageWithImageName:(NSString *)imageName cornerRadius:(CGFloat)cornerRadius borderWidth:(CGFloat)borderWidth borderColor:(UIColor *)borderColor;

@end
