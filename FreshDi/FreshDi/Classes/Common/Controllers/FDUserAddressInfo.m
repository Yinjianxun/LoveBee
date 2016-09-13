//
//  FDUserAddressInfo.m
//  FreshDi
//
//  Created by Yin jianxun on 16/9/9.
//  Copyright © 2016年 YinJianxun. All rights reserved.
//

#import "FDUserAddressInfo.h"

@interface FDUserAddressInfo()


@end

@implementation FDUserAddressInfo

+ (instancetype)sharedInstance {
    
    static dispatch_once_t onceToken;
    static FDUserAddressInfo *userInfo;
    dispatch_once(&onceToken, ^{
        userInfo = [[FDUserAddressInfo alloc]init];
        [FDAddressData loadAdressData:^(NSArray *allAdress, NSError *error) {
            if (allAdress != nil) {
                userInfo.allAdress = [allAdress mutableCopy];
                userInfo.defaultAddress = allAdress[0];
            }
        }];
    });
    return userInfo;
}

- (Address *)defaultAddress
{
    return  _defaultAddress;
}


@end
