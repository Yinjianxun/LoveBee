//
//  HotView.h
//  FreshDi
//
//  Created by Yin jianxun on 16/9/12.
//  Copyright © 2016年 YinJianxun. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Activity.h"
@class HotView;

//@protocol HotViewDelegate <NSObject>
//
//- (void)didHotViewCliked:(HotView *)hotView atIndex:(NSInteger)index;
//
//@end

@interface HotView : UIView

- (instancetype)initWithImages:(NSArray<NSString *> *)images title:(NSArray *)titles placeHolder:(UIImage *)image;
@property (nonatomic,copy) ClikedCallback callback;
@end
