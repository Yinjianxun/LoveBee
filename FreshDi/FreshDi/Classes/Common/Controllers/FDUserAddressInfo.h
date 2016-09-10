//
//  FDUserAddressInfo.h
//  FreshDi
//
//  Created by Yin jianxun on 16/9/9.
//  Copyright © 2016年 YinJianxun. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FDAddressData.h"

@interface FDUserAddressInfo : NSObject

@property (nonatomic,strong) NSArray *allAdress;

+ (instancetype)sharedInstance;

@property (nonatomic,strong) Address *defaultAddress;

@end
