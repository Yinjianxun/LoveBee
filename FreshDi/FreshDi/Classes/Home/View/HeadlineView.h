//
//  HeadlineView.h
//  FreshDi
//
//  Created by Yin jianxun on 16/9/11.
//  Copyright © 2016年 YinJianxun. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "HomeHeadData.h"

@interface HeadlineView : UIView
@property (nonatomic,strong) ActInfo *headline;
@property (nonatomic,copy) ClikedCallback callback;
@end
