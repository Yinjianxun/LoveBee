//
//  FDAddressData.m
//  FreshDi
//
//  Created by Yin jianxun on 16/9/12.
//  Copyright © 2016年 YinJianxun. All rights reserved.
//

#import "FDAddressData.h"

@implementation FDAddressData

+ (void)loadAdressData:(CompleteBlock)complete {
    NSString *path = [[NSBundle mainBundle] pathForResource:@"MyAdress" ofType:nil];
    NSData *data = [NSData dataWithContentsOfFile:path];
    NSDictionary *dic = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingAllowFragments error:nil];
    FDAddressData *adressData = [FDAddressData mj_objectWithKeyValues:dic];
    complete(adressData.data,nil);
}

+ (NSDictionary *)mj_objectClassInArray {
    return  @{
              @"data" : NSStringFromClass([Address class])
              };
}

@end

@implementation Address



@end