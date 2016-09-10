//
//  UIBarButtonItem+button.h
//  FreshDi
//
//  Created by Yin jianxun on 16/9/9.
//  Copyright © 2016年 YinJianxun. All rights reserved.
//

#import <UIKit/UIKit.h>

//左右item的枚举
typedef NS_ENUM(NSInteger, ItemButtonType) {
    LeftItemButton,
    RightItemButton
};

@interface UIBarButtonItem (button)

//类方法 集成Item的创建
+ (instancetype)barButtonItemSetTitle:(NSString *)title image:(NSString *)imageName target:(id)target action:(SEL)action type:(ItemButtonType)type;

@end
