//
//  FDAddressData.m
//  FreshDi
//
//  Created by Yin jianxun on 16/9/9.
//  Copyright © 2016年 YinJianxun. All rights reserved.
//

#import "FDAddressData.h"
#import "LLNetworkTools.h"
#import "MBProgressHUD+IFS.h"

@implementation FDAddressData

//获取address
- (void)loadAddressData {
    
    [[LLNetworkTools sharedManager] getMyAdressCompletionBlockWithSuccess:^(NSURLSessionDataTask *task, NSDictionary *responseObject) {
        
        if (responseObject == nil) {
            
            NSLog(@"获取数据为空-%@", responseObject);
        }
        
        NSLog(@"%@", responseObject);
        
        NSArray *dictArr = responseObject[@"data"];
        
        NSMutableArray *adrArr = [NSMutableArray array];
        for (NSDictionary *adr in dictArr) {
            
            [adrArr addObject:[Address addressWithDict:adr]];
        }
        
        self.addressArr = adrArr.copy;
        
    } andFailure:^(NSError *error) {
        
        if (error) {
            
            NSLog(@"出错了%@", error);
        }
    }];
    
}

@end

//Address的字典转模型类
@implementation Address

+ (instancetype)addressWithDict:(NSDictionary *)dict {
    
    Address *address = [[self alloc] init];
    [address setValuesForKeysWithDictionary:dict];
    return address;
}

- (void)setValue:(id)value forUndefinedKey:(NSString *)key {
}

@end