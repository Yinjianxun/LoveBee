//
//  Goods.m
//  FreshDi
//
//  Created by Yin jianxun on 16/9/11.
//  Copyright © 2016年 YinJianxun. All rights reserved.
//

#import "Goods.h"


@implementation GoodsData

+ (void)loadGoodsData:(CompleteBlock)complete {
    NSString *path = [[NSBundle mainBundle] pathForResource:@"首页新鲜热卖" ofType:nil];
    NSData *data = [NSData dataWithContentsOfFile:path];
    NSDictionary *json = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingAllowFragments error:nil];
    GoodsData *goodsData = [GoodsData mj_objectWithKeyValues:json];
    complete(goodsData.data,nil);
}



+ (NSDictionary *)mj_objectClassInArray {
    return @{@"data":NSStringFromClass([Goods class])};
}

@end

@implementation Goods


+ (NSDictionary *)mj_replacedKeyFromPropertyName {
    return @{@"gid" : @"id"};
}

@end
