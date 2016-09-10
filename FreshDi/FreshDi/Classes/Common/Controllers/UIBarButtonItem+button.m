//
//  UIBarButtonItem+button.m
//  FreshDi
//
//  Created by Yin jianxun on 16/9/9.
//  Copyright © 2016年 YinJianxun. All rights reserved.
//

#import "UIBarButtonItem+button.h"
#import "FDItemLeftButton.h"

@implementation UIBarButtonItem (button)

+ (instancetype)barButtonItemSetTitle:(NSString *)title image:(NSString *)imageName target:(id)target action:(SEL)action type:(ItemButtonType)type {
    
    //创建button
    UIButton *button;
    
    //根据不同 type设置按钮
    if (type == LeftItemButton) {
        
        button = [FDItemLeftButton buttonWithType:UIButtonTypeCustom];
    } else {
        
        button = [FDItemRightButton buttonWithType:UIButtonTypeCustom];
    }
    
    [button setTitle:title forState:UIControlStateNormal];
    [button setImage:[UIImage imageNamed:imageName] forState:UIControlStateNormal];
    [button setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [button addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    button.frame = CGRectMake(0, 0, 60, 44);
    button.titleLabel.font = [UIFont systemFontOfSize:10];
    return [[UIBarButtonItem alloc]initWithCustomView:button];
}

@end
