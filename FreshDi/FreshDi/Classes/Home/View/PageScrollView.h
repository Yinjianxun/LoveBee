//
//  PageScrollView.h
//  FreshDi
//
//  Created by Yin jianxun on 16/9/12.
//  Copyright © 2016年 YinJianxun. All rights reserved.
//

#import <UIKit/UIKit.h>
@class PageScrollView;

//@protocol PageScrollViewDelegate <NSObject>
//
//- (void)didPageScrollViewCliked:(PageScrollView *)pageScrollView atIndex:(NSInteger)index;
//
//@end
@interface PageScrollView : UIView

@property (nonatomic,copy) ClikedCallback callback;

+ (instancetype)pageScollView:(NSArray<NSString *> *)images placeHolder:(UIImage *)placeHolderImage;
@end
