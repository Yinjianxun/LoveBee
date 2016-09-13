//
//  ShopCartCell.h
//  FreshDi
//
//  Created by Yin jianxun on 16/9/12.
//  Copyright © 2016年 YinJianxun. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Goods.h"
@interface ShopCartCell : UITableViewCell

@property (nonatomic,strong) Goods *goods;
+ (instancetype)cellWithTableView:(UITableView *)tableView;
@end
