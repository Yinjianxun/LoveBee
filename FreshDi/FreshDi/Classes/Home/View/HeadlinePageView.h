//
//  HeadlineScrollView.h
//  FreshDi
//
//  Created by Yin jianxun on 16/9/11.
//  Copyright © 2016年 YinJianxun. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "HomeHeadData.h"

@interface HeadlinePageView : UIView

@property (nonatomic,strong) ActInfo *headline;
@property (nonatomic,copy) ClikedCallback callback;


@end
