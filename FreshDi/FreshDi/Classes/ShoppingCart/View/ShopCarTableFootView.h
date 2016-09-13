//
//  ShopCarTableFootView.h
//  FreshDi
//
//  Created by Yin jianxun on 16/9/12.
//  Copyright © 2016年 YinJianxun. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void(^SureButtonCliked)();
@interface ShopCarTableFootView : UIView
@property (nonatomic,assign) CGFloat price;
@property (nonatomic,copy)SureButtonCliked sureButtonCliked;

@end
