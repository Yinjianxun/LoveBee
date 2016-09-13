//
//  ReceiptAddressView.h
//  FreshDi
//
//  Created by Yin jianxun on 16/9/12.
//  Copyright © 2016年 YinJianxun. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FDAddressData.h"

typedef void(^ModifyBtnCliked)();
@interface ReceiptAddressView : UIView
@property (nonatomic,strong) Address *address;

- (instancetype)initWithFrame:(CGRect)frame modify:(ModifyBtnCliked)modifyBtnCliked ;
@end
