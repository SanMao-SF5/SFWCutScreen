//
//  UIViewController+SFWCutScreen.m
//  屏幕截图
//
//  Created by 沈方武 on 15/7/15.
//  Copyright (c) 2015年 沈方武. All rights reserved.
//

#import "UIViewController+SFWCutScreen.h"

@implementation UIViewController (SFWCutScreen)

- (UIImage *)cutScreen:(UIView *)view writeToFile:(NSString *)string{
    
    // 开启一块和屏幕大小一样的上下文
    UIGraphicsBeginImageContextWithOptions(view.frame.size, NO, 0);
    
    // 获取自己创建的上下文
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    
    // 把要截屏的View的图层渲染到上下文
    [view.layer renderInContext:ctx];
    
    // 生成一张图片
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    
    // 关闭上下文
    UIGraphicsEndImageContext();
    
    // 将图片写出到指定位置
    NSData *data = UIImagePNGRepresentation(image);
    
    [data writeToFile:string atomically:YES];
    
    return image;
}

@end
