//
//  FDAddressData.h
//  FreshDi
//
//  Created by Yin jianxun on 16/9/9.
//  Copyright © 2016年 YinJianxun. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Address;

@interface FDAddressData : NSObject

//Address模型数据数组
@property (strong, nonatomic) NSArray <Address *>*addressArr;

@end


//address类
@interface Address : NSObject

@property (nonatomic,copy) NSString *accept_name;
@property (nonatomic,copy) NSString *telphone;
@property (nonatomic,copy) NSString *province_name;
@property (nonatomic,copy) NSString *city_name;
@property (nonatomic,copy) NSString *address;
@property (nonatomic,copy) NSString *lng;
@property (nonatomic,copy) NSString *lat;
@property (nonatomic,copy) NSString *gender;

+ (instancetype)addressWithDict:(NSDictionary *)dict;

@end