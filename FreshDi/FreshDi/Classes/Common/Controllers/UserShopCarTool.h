//
//  UserShopCarTool.h
//  FreshDi
//
//  Created by Yin jianxun on 16/9/8.
//  Copyright © 2016年 YinJianxun. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Goods.h"

@interface UserShopCarTool : NSObject
@property (nonatomic,strong) NSMutableArray<Goods *> *shopCar;

+ (instancetype)sharedInstance;
- (void)addSupermarkProductToShopCar:(Goods *)goods;
- (void)removeFromProductShopCar:(Goods*)goods;
- (CGFloat)getShopCarGoodsPrice ;
- (NSInteger)getShopCarGoodsNumber;
- (BOOL)isEmpty;
@end
