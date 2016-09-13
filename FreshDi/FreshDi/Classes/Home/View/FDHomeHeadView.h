//
//  FDHomeHeadView.h
//  FreshDi
//
//  Created by Yin jianxun on 16/9/11.
//  Copyright © 2016年 YinJianxun. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "HotView.h"
#import "PageScrollView.h"
#import "HomeHeadData.h"
#import "BrandView.h"
#import "HeadlineView.h"

@interface FDHomeHeadView : UIView

//@property (nonatomic,strong) HeadData *headData;
@property (nonatomic,strong) HotView *hotView;
@property (nonatomic,strong) PageScrollView *pageView;
@property (nonatomic,strong) BrandView *brandView;
@property (nonatomic,strong) BrandView *sceneView;
@property (nonatomic,strong) HeadlineView *headlineView;

- (instancetype)initWithHeadData:(HomeHeadData *)headData;
@property (nonatomic,assign) CGFloat height;
@property (nonatomic,copy) ClikedCallback callback;

@end
