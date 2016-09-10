//
//  FDUserAddressInfo.m
//  FreshDi
//
//  Created by Yin jianxun on 16/9/9.
//  Copyright © 2016年 YinJianxun. All rights reserved.
//

#import "FDUserAddressInfo.h"

@implementation FDUserAddressInfo

- (void)setAllAdress:(NSArray *)allAdress {
    
    
    
    
}

+ (instancetype)sharedInstance {
    
    static dispatch_once_t onceToken;
    static FDUserAddressInfo *userInfo;
    dispatch_once(&onceToken, ^{
        userInfo = [[FDUserAddressInfo alloc]init];
        
        FDAddressData *userData = [[FDAddressData alloc] init];
        
        if (userData.addressArr.count > 0) {
            
            userInfo.allAdress = userData.addressArr.copy;
            
            userInfo.defaultAddress = userData.addressArr[0];
        }
        
//        [FDAddressData loadAdressData:^(NSArray *allAdress, NSError *error) {
//            if (allAdress != nil) {
//                userInfo.allAdress = [allAdress mutableCopy];
//                userInfo.defaultAddress = allAdress[0];
//            }
//        }];
    });
    return userInfo;
}

- (Address *)defaultAddress
{
    return  _defaultAddress;
}


@end
