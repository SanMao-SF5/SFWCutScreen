//
//  UIViewController+SFWCutScreen.h
//  屏幕截图
//
//  Created by 沈方武 on 15/7/15.
//  Copyright (c) 2015年 沈方武. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIViewController (SFWCutScreen)

- (UIImage *)cutScreen:(UIView *)view writeToFile:(NSString *)string;

@end
