//
//  BrandView.h
//  FreshDi
//
//  Created by Yin jianxun on 16/9/11.
//  Copyright © 2016年 YinJianxun. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "HomeHeadData.h"

typedef NS_ENUM(NSInteger, BrandViewType) {
    BrandViewTypeThree,
    BrandViewTypeFour
};


@interface BrandView : UIView
- (instancetype)initWithActRow:(ActInfo *)actInfo;

@property (nonatomic,assign) CGFloat height;
@property (nonatomic,copy) ClikedCallback callback;

@end
